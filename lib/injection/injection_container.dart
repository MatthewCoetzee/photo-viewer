import 'package:get_it/get_it.dart';
import 'package:photoviewer/photo-viewer-bloc/photo_viewer_bloc.dart';
import 'package:photoviewer/repository/photo_viewer_repository.dart';

//Create a singleton GetIt instance
final getit = GetIt.instance;

void initDI() {
  //Registers the photo viewer repository as a dependency
  getit.registerLazySingleton<PhotoViewerRepository>(
      () => PhotoViewerRepository());
  //Injects the photo viewer bloc with the photo viewer repository
  getit.registerFactory<PhotoViewerBloc>(
      () => PhotoViewerBloc(repository: getit()));
}
