part of 'photo_viewer_bloc.dart';

@freezed
abstract class PhotoViewerState with _$PhotoViewerState {
  const factory PhotoViewerState.initial() = _Intial;
  const factory PhotoViewerState.loading() = _Loading;
  const factory PhotoViewerState.success(List<Photo> photoList) = _Success;
  const factory PhotoViewerState.failed(PVException exception) = _Failed;
}
