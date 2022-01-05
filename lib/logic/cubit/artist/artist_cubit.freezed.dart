// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArtistStateTearOff {
  const _$ArtistStateTearOff();

  _ArtistInitialState initial() {
    return const _ArtistInitialState();
  }

  _ArtistLoadingState loading() {
    return const _ArtistLoadingState();
  }

  _ArtistLoadedState loaded(
      {required List<SongA> listArtistSongs,
      required ArtistFullInfo artist,
      required List<SocialData> socials}) {
    return _ArtistLoadedState(
      listArtistSongs: listArtistSongs,
      artist: artist,
      socials: socials,
    );
  }

  _ArtistErrorState error() {
    return const _ArtistErrorState();
  }
}

/// @nodoc
const $ArtistState = _$ArtistStateTearOff();

/// @nodoc
mixin _$ArtistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SongA> listArtistSongs,
            ArtistFullInfo artist, List<SocialData> socials)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongA> listArtistSongs, ArtistFullInfo artist,
            List<SocialData> socials)?
        loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongA> listArtistSongs, ArtistFullInfo artist,
            List<SocialData> socials)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ArtistInitialState value) initial,
    required TResult Function(_ArtistLoadingState value) loading,
    required TResult Function(_ArtistLoadedState value) loaded,
    required TResult Function(_ArtistErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ArtistInitialState value)? initial,
    TResult Function(_ArtistLoadingState value)? loading,
    TResult Function(_ArtistLoadedState value)? loaded,
    TResult Function(_ArtistErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArtistInitialState value)? initial,
    TResult Function(_ArtistLoadingState value)? loading,
    TResult Function(_ArtistLoadedState value)? loaded,
    TResult Function(_ArtistErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistStateCopyWith<$Res> {
  factory $ArtistStateCopyWith(
          ArtistState value, $Res Function(ArtistState) then) =
      _$ArtistStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArtistStateCopyWithImpl<$Res> implements $ArtistStateCopyWith<$Res> {
  _$ArtistStateCopyWithImpl(this._value, this._then);

  final ArtistState _value;
  // ignore: unused_field
  final $Res Function(ArtistState) _then;
}

/// @nodoc
abstract class _$ArtistInitialStateCopyWith<$Res> {
  factory _$ArtistInitialStateCopyWith(
          _ArtistInitialState value, $Res Function(_ArtistInitialState) then) =
      __$ArtistInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ArtistInitialStateCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res>
    implements _$ArtistInitialStateCopyWith<$Res> {
  __$ArtistInitialStateCopyWithImpl(
      _ArtistInitialState _value, $Res Function(_ArtistInitialState) _then)
      : super(_value, (v) => _then(v as _ArtistInitialState));

  @override
  _ArtistInitialState get _value => super._value as _ArtistInitialState;
}

/// @nodoc

class _$_ArtistInitialState implements _ArtistInitialState {
  const _$_ArtistInitialState();

  @override
  String toString() {
    return 'ArtistState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ArtistInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SongA> listArtistSongs,
            ArtistFullInfo artist, List<SocialData> socials)
        loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongA> listArtistSongs, ArtistFullInfo artist,
            List<SocialData> socials)?
        loaded,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongA> listArtistSongs, ArtistFullInfo artist,
            List<SocialData> socials)?
        loaded,
    TResult Function()? error,
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
    required TResult Function(_ArtistInitialState value) initial,
    required TResult Function(_ArtistLoadingState value) loading,
    required TResult Function(_ArtistLoadedState value) loaded,
    required TResult Function(_ArtistErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ArtistInitialState value)? initial,
    TResult Function(_ArtistLoadingState value)? loading,
    TResult Function(_ArtistLoadedState value)? loaded,
    TResult Function(_ArtistErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArtistInitialState value)? initial,
    TResult Function(_ArtistLoadingState value)? loading,
    TResult Function(_ArtistLoadedState value)? loaded,
    TResult Function(_ArtistErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ArtistInitialState implements ArtistState {
  const factory _ArtistInitialState() = _$_ArtistInitialState;
}

/// @nodoc
abstract class _$ArtistLoadingStateCopyWith<$Res> {
  factory _$ArtistLoadingStateCopyWith(
          _ArtistLoadingState value, $Res Function(_ArtistLoadingState) then) =
      __$ArtistLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ArtistLoadingStateCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res>
    implements _$ArtistLoadingStateCopyWith<$Res> {
  __$ArtistLoadingStateCopyWithImpl(
      _ArtistLoadingState _value, $Res Function(_ArtistLoadingState) _then)
      : super(_value, (v) => _then(v as _ArtistLoadingState));

  @override
  _ArtistLoadingState get _value => super._value as _ArtistLoadingState;
}

/// @nodoc

class _$_ArtistLoadingState implements _ArtistLoadingState {
  const _$_ArtistLoadingState();

  @override
  String toString() {
    return 'ArtistState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ArtistLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SongA> listArtistSongs,
            ArtistFullInfo artist, List<SocialData> socials)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongA> listArtistSongs, ArtistFullInfo artist,
            List<SocialData> socials)?
        loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongA> listArtistSongs, ArtistFullInfo artist,
            List<SocialData> socials)?
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
    required TResult Function(_ArtistInitialState value) initial,
    required TResult Function(_ArtistLoadingState value) loading,
    required TResult Function(_ArtistLoadedState value) loaded,
    required TResult Function(_ArtistErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ArtistInitialState value)? initial,
    TResult Function(_ArtistLoadingState value)? loading,
    TResult Function(_ArtistLoadedState value)? loaded,
    TResult Function(_ArtistErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArtistInitialState value)? initial,
    TResult Function(_ArtistLoadingState value)? loading,
    TResult Function(_ArtistLoadedState value)? loaded,
    TResult Function(_ArtistErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ArtistLoadingState implements ArtistState {
  const factory _ArtistLoadingState() = _$_ArtistLoadingState;
}

/// @nodoc
abstract class _$ArtistLoadedStateCopyWith<$Res> {
  factory _$ArtistLoadedStateCopyWith(
          _ArtistLoadedState value, $Res Function(_ArtistLoadedState) then) =
      __$ArtistLoadedStateCopyWithImpl<$Res>;
  $Res call(
      {List<SongA> listArtistSongs,
      ArtistFullInfo artist,
      List<SocialData> socials});

  $ArtistFullInfoCopyWith<$Res> get artist;
}

/// @nodoc
class __$ArtistLoadedStateCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res>
    implements _$ArtistLoadedStateCopyWith<$Res> {
  __$ArtistLoadedStateCopyWithImpl(
      _ArtistLoadedState _value, $Res Function(_ArtistLoadedState) _then)
      : super(_value, (v) => _then(v as _ArtistLoadedState));

  @override
  _ArtistLoadedState get _value => super._value as _ArtistLoadedState;

  @override
  $Res call({
    Object? listArtistSongs = freezed,
    Object? artist = freezed,
    Object? socials = freezed,
  }) {
    return _then(_ArtistLoadedState(
      listArtistSongs: listArtistSongs == freezed
          ? _value.listArtistSongs
          : listArtistSongs // ignore: cast_nullable_to_non_nullable
              as List<SongA>,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistFullInfo,
      socials: socials == freezed
          ? _value.socials
          : socials // ignore: cast_nullable_to_non_nullable
              as List<SocialData>,
    ));
  }

  @override
  $ArtistFullInfoCopyWith<$Res> get artist {
    return $ArtistFullInfoCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value));
    });
  }
}

/// @nodoc

class _$_ArtistLoadedState implements _ArtistLoadedState {
  const _$_ArtistLoadedState(
      {required this.listArtistSongs,
      required this.artist,
      required this.socials});

  @override
  final List<SongA> listArtistSongs;
  @override
  final ArtistFullInfo artist;
  @override
  final List<SocialData> socials;

  @override
  String toString() {
    return 'ArtistState.loaded(listArtistSongs: $listArtistSongs, artist: $artist, socials: $socials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistLoadedState &&
            const DeepCollectionEquality()
                .equals(other.listArtistSongs, listArtistSongs) &&
            const DeepCollectionEquality().equals(other.artist, artist) &&
            const DeepCollectionEquality().equals(other.socials, socials));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listArtistSongs),
      const DeepCollectionEquality().hash(artist),
      const DeepCollectionEquality().hash(socials));

  @JsonKey(ignore: true)
  @override
  _$ArtistLoadedStateCopyWith<_ArtistLoadedState> get copyWith =>
      __$ArtistLoadedStateCopyWithImpl<_ArtistLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SongA> listArtistSongs,
            ArtistFullInfo artist, List<SocialData> socials)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(listArtistSongs, artist, socials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongA> listArtistSongs, ArtistFullInfo artist,
            List<SocialData> socials)?
        loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(listArtistSongs, artist, socials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongA> listArtistSongs, ArtistFullInfo artist,
            List<SocialData> socials)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listArtistSongs, artist, socials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ArtistInitialState value) initial,
    required TResult Function(_ArtistLoadingState value) loading,
    required TResult Function(_ArtistLoadedState value) loaded,
    required TResult Function(_ArtistErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ArtistInitialState value)? initial,
    TResult Function(_ArtistLoadingState value)? loading,
    TResult Function(_ArtistLoadedState value)? loaded,
    TResult Function(_ArtistErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArtistInitialState value)? initial,
    TResult Function(_ArtistLoadingState value)? loading,
    TResult Function(_ArtistLoadedState value)? loaded,
    TResult Function(_ArtistErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ArtistLoadedState implements ArtistState {
  const factory _ArtistLoadedState(
      {required List<SongA> listArtistSongs,
      required ArtistFullInfo artist,
      required List<SocialData> socials}) = _$_ArtistLoadedState;

  List<SongA> get listArtistSongs;
  ArtistFullInfo get artist;
  List<SocialData> get socials;
  @JsonKey(ignore: true)
  _$ArtistLoadedStateCopyWith<_ArtistLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ArtistErrorStateCopyWith<$Res> {
  factory _$ArtistErrorStateCopyWith(
          _ArtistErrorState value, $Res Function(_ArtistErrorState) then) =
      __$ArtistErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ArtistErrorStateCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res>
    implements _$ArtistErrorStateCopyWith<$Res> {
  __$ArtistErrorStateCopyWithImpl(
      _ArtistErrorState _value, $Res Function(_ArtistErrorState) _then)
      : super(_value, (v) => _then(v as _ArtistErrorState));

  @override
  _ArtistErrorState get _value => super._value as _ArtistErrorState;
}

/// @nodoc

class _$_ArtistErrorState implements _ArtistErrorState {
  const _$_ArtistErrorState();

  @override
  String toString() {
    return 'ArtistState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ArtistErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SongA> listArtistSongs,
            ArtistFullInfo artist, List<SocialData> socials)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongA> listArtistSongs, ArtistFullInfo artist,
            List<SocialData> socials)?
        loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongA> listArtistSongs, ArtistFullInfo artist,
            List<SocialData> socials)?
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
    required TResult Function(_ArtistInitialState value) initial,
    required TResult Function(_ArtistLoadingState value) loading,
    required TResult Function(_ArtistLoadedState value) loaded,
    required TResult Function(_ArtistErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ArtistInitialState value)? initial,
    TResult Function(_ArtistLoadingState value)? loading,
    TResult Function(_ArtistLoadedState value)? loaded,
    TResult Function(_ArtistErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ArtistInitialState value)? initial,
    TResult Function(_ArtistLoadingState value)? loading,
    TResult Function(_ArtistLoadedState value)? loaded,
    TResult Function(_ArtistErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ArtistErrorState implements ArtistState {
  const factory _ArtistErrorState() = _$_ArtistErrorState;
}
