// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_viewer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotoViewerStateTearOff {
  const _$PhotoViewerStateTearOff();

  _Intial initial() {
    return const _Intial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Success success(List<Photo> photoList) {
    return _Success(
      photoList,
    );
  }

  _Failed failed(PVException exception) {
    return _Failed(
      exception,
    );
  }
}

/// @nodoc
const $PhotoViewerState = _$PhotoViewerStateTearOff();

/// @nodoc
mixin _$PhotoViewerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Photo> photoList) success,
    required TResult Function(PVException exception) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Photo> photoList)? success,
    TResult Function(PVException exception)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Photo> photoList)? success,
    TResult Function(PVException exception)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoViewerStateCopyWith<$Res> {
  factory $PhotoViewerStateCopyWith(
          PhotoViewerState value, $Res Function(PhotoViewerState) then) =
      _$PhotoViewerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoViewerStateCopyWithImpl<$Res>
    implements $PhotoViewerStateCopyWith<$Res> {
  _$PhotoViewerStateCopyWithImpl(this._value, this._then);

  final PhotoViewerState _value;
  // ignore: unused_field
  final $Res Function(PhotoViewerState) _then;
}

/// @nodoc
abstract class _$IntialCopyWith<$Res> {
  factory _$IntialCopyWith(_Intial value, $Res Function(_Intial) then) =
      __$IntialCopyWithImpl<$Res>;
}

/// @nodoc
class __$IntialCopyWithImpl<$Res> extends _$PhotoViewerStateCopyWithImpl<$Res>
    implements _$IntialCopyWith<$Res> {
  __$IntialCopyWithImpl(_Intial _value, $Res Function(_Intial) _then)
      : super(_value, (v) => _then(v as _Intial));

  @override
  _Intial get _value => super._value as _Intial;
}

/// @nodoc

class _$_Intial implements _Intial {
  const _$_Intial();

  @override
  String toString() {
    return 'PhotoViewerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Intial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Photo> photoList) success,
    required TResult Function(PVException exception) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Photo> photoList)? success,
    TResult Function(PVException exception)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Photo> photoList)? success,
    TResult Function(PVException exception)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Intial implements PhotoViewerState {
  const factory _Intial() = _$_Intial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PhotoViewerStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'PhotoViewerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Photo> photoList) success,
    required TResult Function(PVException exception) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Photo> photoList)? success,
    TResult Function(PVException exception)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Photo> photoList)? success,
    TResult Function(PVException exception)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PhotoViewerState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<Photo> photoList});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$PhotoViewerStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? photoList = freezed,
  }) {
    return _then(_Success(
      photoList == freezed
          ? _value.photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.photoList);

  @override
  final List<Photo> photoList;

  @override
  String toString() {
    return 'PhotoViewerState.success(photoList: $photoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            const DeepCollectionEquality().equals(other.photoList, photoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(photoList));

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Photo> photoList) success,
    required TResult Function(PVException exception) failed,
  }) {
    return success(photoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Photo> photoList)? success,
    TResult Function(PVException exception)? failed,
  }) {
    return success?.call(photoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Photo> photoList)? success,
    TResult Function(PVException exception)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(photoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements PhotoViewerState {
  const factory _Success(List<Photo> photoList) = _$_Success;

  List<Photo> get photoList;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({PVException exception});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$PhotoViewerStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Failed(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as PVException,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.exception);

  @override
  final PVException exception;

  @override
  String toString() {
    return 'PhotoViewerState.failed(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failed &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Photo> photoList) success,
    required TResult Function(PVException exception) failed,
  }) {
    return failed(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Photo> photoList)? success,
    TResult Function(PVException exception)? failed,
  }) {
    return failed?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Photo> photoList)? success,
    TResult Function(PVException exception)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements PhotoViewerState {
  const factory _Failed(PVException exception) = _$_Failed;

  PVException get exception;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PhotoViewerEventTearOff {
  const _$PhotoViewerEventTearOff();

  _LoadMoreImages loadMoreImages(int index, List<Photo> previousPhotos) {
    return _LoadMoreImages(
      index,
      previousPhotos,
    );
  }
}

/// @nodoc
const $PhotoViewerEvent = _$PhotoViewerEventTearOff();

/// @nodoc
mixin _$PhotoViewerEvent {
  int get index => throw _privateConstructorUsedError;
  List<Photo> get previousPhotos => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, List<Photo> previousPhotos)
        loadMoreImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, List<Photo> previousPhotos)? loadMoreImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<Photo> previousPhotos)? loadMoreImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMoreImages value) loadMoreImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMoreImages value)? loadMoreImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMoreImages value)? loadMoreImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoViewerEventCopyWith<PhotoViewerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoViewerEventCopyWith<$Res> {
  factory $PhotoViewerEventCopyWith(
          PhotoViewerEvent value, $Res Function(PhotoViewerEvent) then) =
      _$PhotoViewerEventCopyWithImpl<$Res>;
  $Res call({int index, List<Photo> previousPhotos});
}

/// @nodoc
class _$PhotoViewerEventCopyWithImpl<$Res>
    implements $PhotoViewerEventCopyWith<$Res> {
  _$PhotoViewerEventCopyWithImpl(this._value, this._then);

  final PhotoViewerEvent _value;
  // ignore: unused_field
  final $Res Function(PhotoViewerEvent) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? previousPhotos = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      previousPhotos: previousPhotos == freezed
          ? _value.previousPhotos
          : previousPhotos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
abstract class _$LoadMoreImagesCopyWith<$Res>
    implements $PhotoViewerEventCopyWith<$Res> {
  factory _$LoadMoreImagesCopyWith(
          _LoadMoreImages value, $Res Function(_LoadMoreImages) then) =
      __$LoadMoreImagesCopyWithImpl<$Res>;
  @override
  $Res call({int index, List<Photo> previousPhotos});
}

/// @nodoc
class __$LoadMoreImagesCopyWithImpl<$Res>
    extends _$PhotoViewerEventCopyWithImpl<$Res>
    implements _$LoadMoreImagesCopyWith<$Res> {
  __$LoadMoreImagesCopyWithImpl(
      _LoadMoreImages _value, $Res Function(_LoadMoreImages) _then)
      : super(_value, (v) => _then(v as _LoadMoreImages));

  @override
  _LoadMoreImages get _value => super._value as _LoadMoreImages;

  @override
  $Res call({
    Object? index = freezed,
    Object? previousPhotos = freezed,
  }) {
    return _then(_LoadMoreImages(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      previousPhotos == freezed
          ? _value.previousPhotos
          : previousPhotos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$_LoadMoreImages implements _LoadMoreImages {
  const _$_LoadMoreImages(this.index, this.previousPhotos);

  @override
  final int index;
  @override
  final List<Photo> previousPhotos;

  @override
  String toString() {
    return 'PhotoViewerEvent.loadMoreImages(index: $index, previousPhotos: $previousPhotos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadMoreImages &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality()
                .equals(other.previousPhotos, previousPhotos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(previousPhotos));

  @JsonKey(ignore: true)
  @override
  _$LoadMoreImagesCopyWith<_LoadMoreImages> get copyWith =>
      __$LoadMoreImagesCopyWithImpl<_LoadMoreImages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, List<Photo> previousPhotos)
        loadMoreImages,
  }) {
    return loadMoreImages(index, previousPhotos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, List<Photo> previousPhotos)? loadMoreImages,
  }) {
    return loadMoreImages?.call(index, previousPhotos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<Photo> previousPhotos)? loadMoreImages,
    required TResult orElse(),
  }) {
    if (loadMoreImages != null) {
      return loadMoreImages(index, previousPhotos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMoreImages value) loadMoreImages,
  }) {
    return loadMoreImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadMoreImages value)? loadMoreImages,
  }) {
    return loadMoreImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMoreImages value)? loadMoreImages,
    required TResult orElse(),
  }) {
    if (loadMoreImages != null) {
      return loadMoreImages(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreImages implements PhotoViewerEvent {
  const factory _LoadMoreImages(int index, List<Photo> previousPhotos) =
      _$_LoadMoreImages;

  @override
  int get index;
  @override
  List<Photo> get previousPhotos;
  @override
  @JsonKey(ignore: true)
  _$LoadMoreImagesCopyWith<_LoadMoreImages> get copyWith =>
      throw _privateConstructorUsedError;
}
