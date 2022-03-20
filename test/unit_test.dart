import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:photoviewer/constants/constants.dart';
import 'package:photoviewer/exceptions/exceptions.dart';
import 'package:photoviewer/models/photo_model.dart';
import 'package:photoviewer/photo-viewer-bloc/photo_viewer_bloc.dart';
import 'package:photoviewer/repository/photo_viewer_repository.dart';

class PhotoViewRepoMock extends Mock implements PhotoViewerRepository {}

//Mock Photo List
List<Photo> mockPhotos = [
  Photo(
      imageURL:
          'https://images.pexels.com/photos/2014422/pexels-photo-2014422.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280',
      title: 'Rocks with sunset'),
  Photo(
      imageURL:
          'https://images.pexels.com/photos/3573351/pexels-photo-3573351.png?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280',
      title: 'Tree Landscape'),
];

void main() {
  late PhotoViewRepoMock _photoViewerRepoMock;

  setUp(() {
    _photoViewerRepoMock = PhotoViewRepoMock();
  });

  group('API tests', () {
    test('Test correct API response of 200', () async* {
      var _mockApi = MockApi();
      //Tests API calls and error codes
      when(_mockApi.get(Uri.parse(
              'https://api.pexels.com/v1/curated?page=0&per_page=10')))
          .thenAnswer(
              (_) async => http.Response(jsonEncode(mockPhotos[0]), 200));

      expect(await _photoViewerRepoMock.getPhotoList(0, [], client: _mockApi),
          isA<List<Photo>>());
    });

    test('Test failed API response of 404', () async* {
      var _mockApi = MockApi();
      //Tests API calls and error codes
      when(_mockApi.get(Uri.parse(
              'https://api.pexels.com/v1/curated?page=0&per_page=10')))
          .thenAnswer(
              (_) async => http.Response(jsonEncode(mockPhotos[0]), 404));

      expect(await _photoViewerRepoMock.getPhotoList(0, [], client: _mockApi),
          isA<StatusCodeException>());
    });
  });

  group('Test correct bloc functionality', () {
    //Tests the Bloc functionality
    test('Test order of omitted states from bloc', () async* {
      final bloc = PhotoViewerBloc(repository: _photoViewerRepoMock);
      //Adds load more image even to bloc
      bloc.add(const PhotoViewerEvent.loadMoreImages(0, []));

      await expectLater(
          bloc,
          emitsInOrder([
            const PhotoViewerState.initial(),
            const PhotoViewerState.loading(),
            PhotoViewerState.success(mockPhotos)
          ]));

      bloc.close();
    });
  });
}
