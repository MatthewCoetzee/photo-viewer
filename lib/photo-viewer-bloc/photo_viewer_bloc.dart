import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photoviewer/exceptions/exceptions.dart';
import 'package:photoviewer/models/photo_model.dart';
import 'package:photoviewer/repository/photo_viewer_repository.dart';

part 'photo_viewer_state.dart';
part 'photo_viewer_event.dart';
part 'photo_viewer_bloc.freezed.dart';

class PhotoViewerBloc extends Bloc<PhotoViewerEvent, PhotoViewerState> {
  final PhotoViewerRepository repository;

  PhotoViewerBloc({required this.repository})
      : super(const PhotoViewerState.initial()) {
    on<_LoadMoreImages>(_loadMoreImages);
  }

  Future<void> _loadMoreImages(
      _LoadMoreImages event, Emitter<PhotoViewerState> emit) async {
    //Allows for pagination
    if (event.index == 0) emit(const PhotoViewerState.loading());
    try {
      //Fetches a list of photos
      List<Photo> photoList =
          await repository.getPhotoList(event.index, event.previousPhotos);
      emit(PhotoViewerState.success(photoList));
      //Catches the correct exceptions from the getPhotoList()
    } on InternalException catch (_) {
      emit(PhotoViewerState.failed(InternalException()));
    } on StatusCodeException catch (statusCode) {
      emit(PhotoViewerState.failed(
          StatusCodeException(statusCode: statusCode.statusCode)));
    } catch (e) {
      emit(PhotoViewerState.failed(UnknownException(e.toString())));
    }
  }
}
