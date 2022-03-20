part of 'photo_viewer_bloc.dart';

@freezed
abstract class PhotoViewerEvent with _$PhotoViewerEvent {
  const factory PhotoViewerEvent.loadMoreImages(
      int index, List<Photo> previousPhotos) = _LoadMoreImages;
}
