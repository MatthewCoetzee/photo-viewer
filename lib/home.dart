import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photoviewer/constants/constants.dart';
import 'package:photoviewer/exceptions/exceptions.dart';
import 'package:photoviewer/injection/injection_container.dart';
import 'package:photoviewer/models/photo_model.dart';
import 'package:photoviewer/photo-viewer-bloc/photo_viewer_bloc.dart';
import 'package:photoviewer/widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Injected photo viewer bloc
  final PhotoViewerBloc _photoViewerBloc = getit<PhotoViewerBloc>();
  //The scroll controller for the grid view to detect scroll changes
  final ScrollController _scrollController = ScrollController();
  //Starting index for pagination
  int _index = 1;
  //Prevents doubling rendering of images - Scroll to end twice whilst loading
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    //Calls first 10 photos from the API
    _photoViewerBloc.add(const PhotoViewerEvent.loadMoreImages(0, []));
  }

  @override
  void dispose() {
    super.dispose();
    _photoViewerBloc.close();
  }

  //Scroll notifier - Implemented to trigger pagination when the first 10
  //images have been passed and the user reaches the end of the screen
  bool _paginateNotifier(
      ScrollNotification notification, List<Photo> photoList) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0 &&
        !_isLoading) {
      _photoViewerBloc.add(PhotoViewerEvent.loadMoreImages(_index, photoList));
      setState(() {
        _index++;
        _isLoading = true;
      });
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(_size.height * 0.04),
                  child: Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: _size.width * 0.08,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              BlocBuilder<PhotoViewerBloc, PhotoViewerState>(
                bloc: _photoViewerBloc,
                builder: (context, state) {
                  return state.maybeWhen(
                      loading: () => const CustomLoader(),
                      failed: (error) {
                        if (error is InternalException) {
                          return ErrorMessage(
                              errorMessage: Constants.INTERNAL_ERROR);
                        } else if (error is StatusCodeException) {
                          return ErrorMessage(
                              errorMessage: Constants.STATUS_CODE_ERROR(
                                  error.statusCode));
                        } else if (error is UnknownException) {
                          developer.log(
                              'A loggable unknown error has occured in PhotoViewerBloc',
                              name: 'lib/home.dart',
                              error: error);
                          return ErrorMessage(
                              errorMessage: Constants.UNKNOWN_ERROR);
                        } else {
                          //Redundant line - Freezed not used here so no maybeMap()
                          return ErrorMessage(
                              errorMessage: Constants.UNKNOWN_ERROR);
                        }
                      },
                      success: (List<Photo> photos) {
                        _isLoading = false;
                        return NotificationListener<ScrollNotification>(
                            onNotification: ((notification) =>
                                _paginateNotifier(notification, photos)),
                            child: Expanded(
                              child: Container(
                                width: _size.width,
                                child: CustomScrollView(
                                  controller: _scrollController,
                                  shrinkWrap: true,
                                  slivers: [
                                    SliverGrid(
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 0,
                                              childAspectRatio: 11 / 16),
                                      delegate: SliverChildBuilderDelegate(
                                        (BuildContext context, int index) {
                                          return PhotoTile(
                                            url: photos[index].imageURL,
                                            title: photos[index].title,
                                          );
                                        },
                                        childCount: photos.length,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ));
                      },
                      orElse: () {
                        return Container();
                      });
                },
              )
            ],
          )),
    );
  }
}
