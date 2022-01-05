// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'song_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SongStateTearOff {
  const _$SongStateTearOff();

  _SongLoadingState loading() {
    return const _SongLoadingState();
  }

  SongLoadedState loaded(
      {required Song song,
      required String videoUrl,
      required String featuredArtists,
      required String writeredArtists,
      required String producerArtists}) {
    return SongLoadedState(
      song: song,
      videoUrl: videoUrl,
      featuredArtists: featuredArtists,
      writeredArtists: writeredArtists,
      producerArtists: producerArtists,
    );
  }

  _SongErrorState error() {
    return const _SongErrorState();
  }
}

/// @nodoc
const $SongState = _$SongStateTearOff();

/// @nodoc
mixin _$SongState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Song song,
            String videoUrl,
            String featuredArtists,
            String writeredArtists,
            String producerArtists)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Song song, String videoUrl, String featuredArtists,
            String writeredArtists, String producerArtists)?
        loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Song song, String videoUrl, String featuredArtists,
            String writeredArtists, String producerArtists)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SongLoadingState value) loading,
    required TResult Function(SongLoadedState value) loaded,
    required TResult Function(_SongErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SongLoadingState value)? loading,
    TResult Function(SongLoadedState value)? loaded,
    TResult Function(_SongErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SongLoadingState value)? loading,
    TResult Function(SongLoadedState value)? loaded,
    TResult Function(_SongErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongStateCopyWith<$Res> {
  factory $SongStateCopyWith(SongState value, $Res Function(SongState) then) =
      _$SongStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SongStateCopyWithImpl<$Res> implements $SongStateCopyWith<$Res> {
  _$SongStateCopyWithImpl(this._value, this._then);

  final SongState _value;
  // ignore: unused_field
  final $Res Function(SongState) _then;
}

/// @nodoc
abstract class _$SongLoadingStateCopyWith<$Res> {
  factory _$SongLoadingStateCopyWith(
          _SongLoadingState value, $Res Function(_SongLoadingState) then) =
      __$SongLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SongLoadingStateCopyWithImpl<$Res>
    extends _$SongStateCopyWithImpl<$Res>
    implements _$SongLoadingStateCopyWith<$Res> {
  __$SongLoadingStateCopyWithImpl(
      _SongLoadingState _value, $Res Function(_SongLoadingState) _then)
      : super(_value, (v) => _then(v as _SongLoadingState));

  @override
  _SongLoadingState get _value => super._value as _SongLoadingState;
}

/// @nodoc

class _$_SongLoadingState implements _SongLoadingState {
  const _$_SongLoadingState();

  @override
  String toString() {
    return 'SongState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SongLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Song song,
            String videoUrl,
            String featuredArtists,
            String writeredArtists,
            String producerArtists)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Song song, String videoUrl, String featuredArtists,
            String writeredArtists, String producerArtists)?
        loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Song song, String videoUrl, String featuredArtists,
            String writeredArtists, String producerArtists)?
        loaded,
    TResult Function()? error,
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
    required TResult Function(_SongLoadingState value) loading,
    required TResult Function(SongLoadedState value) loaded,
    required TResult Function(_SongErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SongLoadingState value)? loading,
    TResult Function(SongLoadedState value)? loaded,
    TResult Function(_SongErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SongLoadingState value)? loading,
    TResult Function(SongLoadedState value)? loaded,
    TResult Function(_SongErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SongLoadingState implements SongState {
  const factory _SongLoadingState() = _$_SongLoadingState;
}

/// @nodoc
abstract class $SongLoadedStateCopyWith<$Res> {
  factory $SongLoadedStateCopyWith(
          SongLoadedState value, $Res Function(SongLoadedState) then) =
      _$SongLoadedStateCopyWithImpl<$Res>;
  $Res call(
      {Song song,
      String videoUrl,
      String featuredArtists,
      String writeredArtists,
      String producerArtists});

  $SongCopyWith<$Res> get song;
}

/// @nodoc
class _$SongLoadedStateCopyWithImpl<$Res> extends _$SongStateCopyWithImpl<$Res>
    implements $SongLoadedStateCopyWith<$Res> {
  _$SongLoadedStateCopyWithImpl(
      SongLoadedState _value, $Res Function(SongLoadedState) _then)
      : super(_value, (v) => _then(v as SongLoadedState));

  @override
  SongLoadedState get _value => super._value as SongLoadedState;

  @override
  $Res call({
    Object? song = freezed,
    Object? videoUrl = freezed,
    Object? featuredArtists = freezed,
    Object? writeredArtists = freezed,
    Object? producerArtists = freezed,
  }) {
    return _then(SongLoadedState(
      song: song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      featuredArtists: featuredArtists == freezed
          ? _value.featuredArtists
          : featuredArtists // ignore: cast_nullable_to_non_nullable
              as String,
      writeredArtists: writeredArtists == freezed
          ? _value.writeredArtists
          : writeredArtists // ignore: cast_nullable_to_non_nullable
              as String,
      producerArtists: producerArtists == freezed
          ? _value.producerArtists
          : producerArtists // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SongCopyWith<$Res> get song {
    return $SongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value));
    });
  }
}

/// @nodoc

class _$SongLoadedState implements SongLoadedState {
  const _$SongLoadedState(
      {required this.song,
      required this.videoUrl,
      required this.featuredArtists,
      required this.writeredArtists,
      required this.producerArtists});

  @override
  final Song song;
  @override
  final String videoUrl;
  @override
  final String featuredArtists;
  @override
  final String writeredArtists;
  @override
  final String producerArtists;

  @override
  String toString() {
    return 'SongState.loaded(song: $song, videoUrl: $videoUrl, featuredArtists: $featuredArtists, writeredArtists: $writeredArtists, producerArtists: $producerArtists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SongLoadedState &&
            const DeepCollectionEquality().equals(other.song, song) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
            const DeepCollectionEquality()
                .equals(other.featuredArtists, featuredArtists) &&
            const DeepCollectionEquality()
                .equals(other.writeredArtists, writeredArtists) &&
            const DeepCollectionEquality()
                .equals(other.producerArtists, producerArtists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(song),
      const DeepCollectionEquality().hash(videoUrl),
      const DeepCollectionEquality().hash(featuredArtists),
      const DeepCollectionEquality().hash(writeredArtists),
      const DeepCollectionEquality().hash(producerArtists));

  @JsonKey(ignore: true)
  @override
  $SongLoadedStateCopyWith<SongLoadedState> get copyWith =>
      _$SongLoadedStateCopyWithImpl<SongLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Song song,
            String videoUrl,
            String featuredArtists,
            String writeredArtists,
            String producerArtists)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(
        song, videoUrl, featuredArtists, writeredArtists, producerArtists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Song song, String videoUrl, String featuredArtists,
            String writeredArtists, String producerArtists)?
        loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(
        song, videoUrl, featuredArtists, writeredArtists, producerArtists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Song song, String videoUrl, String featuredArtists,
            String writeredArtists, String producerArtists)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          song, videoUrl, featuredArtists, writeredArtists, producerArtists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SongLoadingState value) loading,
    required TResult Function(SongLoadedState value) loaded,
    required TResult Function(_SongErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SongLoadingState value)? loading,
    TResult Function(SongLoadedState value)? loaded,
    TResult Function(_SongErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SongLoadingState value)? loading,
    TResult Function(SongLoadedState value)? loaded,
    TResult Function(_SongErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SongLoadedState implements SongState {
  const factory SongLoadedState(
      {required Song song,
      required String videoUrl,
      required String featuredArtists,
      required String writeredArtists,
      required String producerArtists}) = _$SongLoadedState;

  Song get song;
  String get videoUrl;
  String get featuredArtists;
  String get writeredArtists;
  String get producerArtists;
  @JsonKey(ignore: true)
  $SongLoadedStateCopyWith<SongLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SongErrorStateCopyWith<$Res> {
  factory _$SongErrorStateCopyWith(
          _SongErrorState value, $Res Function(_SongErrorState) then) =
      __$SongErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SongErrorStateCopyWithImpl<$Res> extends _$SongStateCopyWithImpl<$Res>
    implements _$SongErrorStateCopyWith<$Res> {
  __$SongErrorStateCopyWithImpl(
      _SongErrorState _value, $Res Function(_SongErrorState) _then)
      : super(_value, (v) => _then(v as _SongErrorState));

  @override
  _SongErrorState get _value => super._value as _SongErrorState;
}

/// @nodoc

class _$_SongErrorState implements _SongErrorState {
  const _$_SongErrorState();

  @override
  String toString() {
    return 'SongState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SongErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Song song,
            String videoUrl,
            String featuredArtists,
            String writeredArtists,
            String producerArtists)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Song song, String videoUrl, String featuredArtists,
            String writeredArtists, String producerArtists)?
        loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Song song, String videoUrl, String featuredArtists,
            String writeredArtists, String producerArtists)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SongLoadingState value) loading,
    required TResult Function(SongLoadedState value) loaded,
    required TResult Function(_SongErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SongLoadingState value)? loading,
    TResult Function(SongLoadedState value)? loaded,
    TResult Function(_SongErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SongLoadingState value)? loading,
    TResult Function(SongLoadedState value)? loaded,
    TResult Function(_SongErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SongErrorState implements SongState {
  const factory _SongErrorState() = _$_SongErrorState;
}
