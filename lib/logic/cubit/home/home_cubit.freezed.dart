// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeLoadingState loading() {
    return const _HomeLoadingState();
  }

  HomeLoadedState loaded(
      {List<ArtistFullInfo>? listTopArtists,
      BriefGeniusCountrySongsModel? listRandomTopSongs,
      BriefGeniusCountrySongsModel? listTopCounrtySong}) {
    return HomeLoadedState(
      listTopArtists: listTopArtists,
      listRandomTopSongs: listRandomTopSongs,
      listTopCounrtySong: listTopCounrtySong,
    );
  }

  _HomeErrorState error() {
    return const _HomeErrorState();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)?
        loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$HomeLoadingStateCopyWith<$Res> {
  factory _$HomeLoadingStateCopyWith(
          _HomeLoadingState value, $Res Function(_HomeLoadingState) then) =
      __$HomeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeLoadingStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeLoadingStateCopyWith<$Res> {
  __$HomeLoadingStateCopyWithImpl(
      _HomeLoadingState _value, $Res Function(_HomeLoadingState) _then)
      : super(_value, (v) => _then(v as _HomeLoadingState));

  @override
  _HomeLoadingState get _value => super._value as _HomeLoadingState;
}

/// @nodoc

class _$_HomeLoadingState implements _HomeLoadingState {
  const _$_HomeLoadingState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HomeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)?
        loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)?
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
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadingState implements HomeState {
  const factory _HomeLoadingState() = _$_HomeLoadingState;
}

/// @nodoc
abstract class $HomeLoadedStateCopyWith<$Res> {
  factory $HomeLoadedStateCopyWith(
          HomeLoadedState value, $Res Function(HomeLoadedState) then) =
      _$HomeLoadedStateCopyWithImpl<$Res>;
  $Res call(
      {List<ArtistFullInfo>? listTopArtists,
      BriefGeniusCountrySongsModel? listRandomTopSongs,
      BriefGeniusCountrySongsModel? listTopCounrtySong});
}

/// @nodoc
class _$HomeLoadedStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadedStateCopyWith<$Res> {
  _$HomeLoadedStateCopyWithImpl(
      HomeLoadedState _value, $Res Function(HomeLoadedState) _then)
      : super(_value, (v) => _then(v as HomeLoadedState));

  @override
  HomeLoadedState get _value => super._value as HomeLoadedState;

  @override
  $Res call({
    Object? listTopArtists = freezed,
    Object? listRandomTopSongs = freezed,
    Object? listTopCounrtySong = freezed,
  }) {
    return _then(HomeLoadedState(
      listTopArtists: listTopArtists == freezed
          ? _value.listTopArtists
          : listTopArtists // ignore: cast_nullable_to_non_nullable
              as List<ArtistFullInfo>?,
      listRandomTopSongs: listRandomTopSongs == freezed
          ? _value.listRandomTopSongs
          : listRandomTopSongs // ignore: cast_nullable_to_non_nullable
              as BriefGeniusCountrySongsModel?,
      listTopCounrtySong: listTopCounrtySong == freezed
          ? _value.listTopCounrtySong
          : listTopCounrtySong // ignore: cast_nullable_to_non_nullable
              as BriefGeniusCountrySongsModel?,
    ));
  }
}

/// @nodoc

class _$HomeLoadedState implements HomeLoadedState {
  const _$HomeLoadedState(
      {this.listTopArtists, this.listRandomTopSongs, this.listTopCounrtySong});

  @override
  final List<ArtistFullInfo>? listTopArtists;
  @override
  final BriefGeniusCountrySongsModel? listRandomTopSongs;
  @override
  final BriefGeniusCountrySongsModel? listTopCounrtySong;

  @override
  String toString() {
    return 'HomeState.loaded(listTopArtists: $listTopArtists, listRandomTopSongs: $listRandomTopSongs, listTopCounrtySong: $listTopCounrtySong)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeLoadedState &&
            const DeepCollectionEquality()
                .equals(other.listTopArtists, listTopArtists) &&
            const DeepCollectionEquality()
                .equals(other.listRandomTopSongs, listRandomTopSongs) &&
            const DeepCollectionEquality()
                .equals(other.listTopCounrtySong, listTopCounrtySong));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listTopArtists),
      const DeepCollectionEquality().hash(listRandomTopSongs),
      const DeepCollectionEquality().hash(listTopCounrtySong));

  @JsonKey(ignore: true)
  @override
  $HomeLoadedStateCopyWith<HomeLoadedState> get copyWith =>
      _$HomeLoadedStateCopyWithImpl<HomeLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(listTopArtists, listRandomTopSongs, listTopCounrtySong);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)?
        loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(listTopArtists, listRandomTopSongs, listTopCounrtySong);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listTopArtists, listRandomTopSongs, listTopCounrtySong);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeLoadedState implements HomeState {
  const factory HomeLoadedState(
      {List<ArtistFullInfo>? listTopArtists,
      BriefGeniusCountrySongsModel? listRandomTopSongs,
      BriefGeniusCountrySongsModel? listTopCounrtySong}) = _$HomeLoadedState;

  List<ArtistFullInfo>? get listTopArtists;
  BriefGeniusCountrySongsModel? get listRandomTopSongs;
  BriefGeniusCountrySongsModel? get listTopCounrtySong;
  @JsonKey(ignore: true)
  $HomeLoadedStateCopyWith<HomeLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeErrorStateCopyWith<$Res> {
  factory _$HomeErrorStateCopyWith(
          _HomeErrorState value, $Res Function(_HomeErrorState) then) =
      __$HomeErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeErrorStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeErrorStateCopyWith<$Res> {
  __$HomeErrorStateCopyWithImpl(
      _HomeErrorState _value, $Res Function(_HomeErrorState) _then)
      : super(_value, (v) => _then(v as _HomeErrorState));

  @override
  _HomeErrorState get _value => super._value as _HomeErrorState;
}

/// @nodoc

class _$_HomeErrorState implements _HomeErrorState {
  const _$_HomeErrorState();

  @override
  String toString() {
    return 'HomeState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HomeErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)?
        loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ArtistFullInfo>? listTopArtists,
            BriefGeniusCountrySongsModel? listRandomTopSongs,
            BriefGeniusCountrySongsModel? listTopCounrtySong)?
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
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeErrorState implements HomeState {
  const factory _HomeErrorState() = _$_HomeErrorState;
}
