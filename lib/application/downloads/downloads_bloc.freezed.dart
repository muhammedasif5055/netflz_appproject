// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadsEventTearOff {
  const _$DownloadsEventTearOff();

  _GetDownloadimage getDownloadimage() {
    return const _GetDownloadimage();
  }
}

/// @nodoc
const $DownloadsEvent = _$DownloadsEventTearOff();

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadimage value) getDownloadimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadimage value)? getDownloadimage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadimage value)? getDownloadimage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  final DownloadsEvent _value;
  // ignore: unused_field
  final $Res Function(DownloadsEvent) _then;
}

/// @nodoc
abstract class _$GetDownloadimageCopyWith<$Res> {
  factory _$GetDownloadimageCopyWith(
          _GetDownloadimage value, $Res Function(_GetDownloadimage) then) =
      __$GetDownloadimageCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDownloadimageCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res>
    implements _$GetDownloadimageCopyWith<$Res> {
  __$GetDownloadimageCopyWithImpl(
      _GetDownloadimage _value, $Res Function(_GetDownloadimage) _then)
      : super(_value, (v) => _then(v as _GetDownloadimage));

  @override
  _GetDownloadimage get _value => super._value as _GetDownloadimage;
}

/// @nodoc

class _$_GetDownloadimage implements _GetDownloadimage {
  const _$_GetDownloadimage();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadimage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetDownloadimage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadimage,
  }) {
    return getDownloadimage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadimage,
  }) {
    return getDownloadimage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadimage,
    required TResult orElse(),
  }) {
    if (getDownloadimage != null) {
      return getDownloadimage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadimage value) getDownloadimage,
  }) {
    return getDownloadimage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadimage value)? getDownloadimage,
  }) {
    return getDownloadimage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadimage value)? getDownloadimage,
    required TResult orElse(),
  }) {
    if (getDownloadimage != null) {
      return getDownloadimage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadimage implements DownloadsEvent {
  const factory _GetDownloadimage() = _$_GetDownloadimage;
}

/// @nodoc
class _$DownloadStateTearOff {
  const _$DownloadStateTearOff();

  _DownloadState call(
      {required bool isLoading,
      required List<Downloads> downloads,
      required Option<Either<MainFailier, List<Downloads>>>
          downloadFailureOrSucessOption}) {
    return _DownloadState(
      isLoading: isLoading,
      downloads: downloads,
      downloadFailureOrSucessOption: downloadFailureOrSucessOption,
    );
  }
}

/// @nodoc
const $DownloadState = _$DownloadStateTearOff();

/// @nodoc
mixin _$DownloadState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads> get downloads => throw _privateConstructorUsedError;
  Option<Either<MainFailier, List<Downloads>>>
      get downloadFailureOrSucessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadStateCopyWith<DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<MainFailier, List<Downloads>>>
          downloadFailureOrSucessOption});
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  final DownloadState _value;
  // ignore: unused_field
  final $Res Function(DownloadState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? downloadFailureOrSucessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadFailureOrSucessOption: downloadFailureOrSucessOption == freezed
          ? _value.downloadFailureOrSucessOption
          : downloadFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailier, List<Downloads>>>,
    ));
  }
}

/// @nodoc
abstract class _$DownloadStateCopyWith<$Res>
    implements $DownloadStateCopyWith<$Res> {
  factory _$DownloadStateCopyWith(
          _DownloadState value, $Res Function(_DownloadState) then) =
      __$DownloadStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<MainFailier, List<Downloads>>>
          downloadFailureOrSucessOption});
}

/// @nodoc
class __$DownloadStateCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$DownloadStateCopyWith<$Res> {
  __$DownloadStateCopyWithImpl(
      _DownloadState _value, $Res Function(_DownloadState) _then)
      : super(_value, (v) => _then(v as _DownloadState));

  @override
  _DownloadState get _value => super._value as _DownloadState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downloads = freezed,
    Object? downloadFailureOrSucessOption = freezed,
  }) {
    return _then(_DownloadState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: downloads == freezed
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadFailureOrSucessOption: downloadFailureOrSucessOption == freezed
          ? _value.downloadFailureOrSucessOption
          : downloadFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailier, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$_DownloadState implements _DownloadState {
  const _$_DownloadState(
      {required this.isLoading,
      required this.downloads,
      required this.downloadFailureOrSucessOption});

  @override
  final bool isLoading;
  @override
  final List<Downloads> downloads;
  @override
  final Option<Either<MainFailier, List<Downloads>>>
      downloadFailureOrSucessOption;

  @override
  String toString() {
    return 'DownloadState(isLoading: $isLoading, downloads: $downloads, downloadFailureOrSucessOption: $downloadFailureOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.downloads, downloads) &&
            const DeepCollectionEquality().equals(
                other.downloadFailureOrSucessOption,
                downloadFailureOrSucessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(downloads),
      const DeepCollectionEquality().hash(downloadFailureOrSucessOption));

  @JsonKey(ignore: true)
  @override
  _$DownloadStateCopyWith<_DownloadState> get copyWith =>
      __$DownloadStateCopyWithImpl<_DownloadState>(this, _$identity);
}

abstract class _DownloadState implements DownloadState {
  const factory _DownloadState(
      {required bool isLoading,
      required List<Downloads> downloads,
      required Option<Either<MainFailier, List<Downloads>>>
          downloadFailureOrSucessOption}) = _$_DownloadState;

  @override
  bool get isLoading;
  @override
  List<Downloads> get downloads;
  @override
  Option<Either<MainFailier, List<Downloads>>>
      get downloadFailureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$DownloadStateCopyWith<_DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}
