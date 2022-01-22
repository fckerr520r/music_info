// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteStateTearOff {
  const _$FavoriteStateTearOff();

  _FavoriteLoadedState loaded(List<Song> favoriteList) {
    return _FavoriteLoadedState(
      favoriteList,
    );
  }

  _FavoriteLoadingState loading() {
    return const _FavoriteLoadingState();
  }

  _FavoriteErrorState error() {
    return const _FavoriteErrorState();
  }

  _FavoriteNoFoundState noFound() {
    return const _FavoriteNoFoundState();
  }
}

/// @nodoc
const $FavoriteState = _$FavoriteStateTearOff();

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Song> favoriteList) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Song> favoriteList)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Song> favoriteList)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteLoadedState value) loaded,
    required TResult Function(_FavoriteLoadingState value) loading,
    required TResult Function(_FavoriteErrorState value) error,
    required TResult Function(_FavoriteNoFoundState value) noFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FavoriteLoadedState value)? loaded,
    TResult Function(_FavoriteLoadingState value)? loading,
    TResult Function(_FavoriteErrorState value)? error,
    TResult Function(_FavoriteNoFoundState value)? noFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteLoadedState value)? loaded,
    TResult Function(_FavoriteLoadingState value)? loading,
    TResult Function(_FavoriteErrorState value)? error,
    TResult Function(_FavoriteNoFoundState value)? noFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  final FavoriteState _value;
  // ignore: unused_field
  final $Res Function(FavoriteState) _then;
}

/// @nodoc
abstract class _$FavoriteLoadedStateCopyWith<$Res> {
  factory _$FavoriteLoadedStateCopyWith(_FavoriteLoadedState value,
          $Res Function(_FavoriteLoadedState) then) =
      __$FavoriteLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Song> favoriteList});
}

/// @nodoc
class __$FavoriteLoadedStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteLoadedStateCopyWith<$Res> {
  __$FavoriteLoadedStateCopyWithImpl(
      _FavoriteLoadedState _value, $Res Function(_FavoriteLoadedState) _then)
      : super(_value, (v) => _then(v as _FavoriteLoadedState));

  @override
  _FavoriteLoadedState get _value => super._value as _FavoriteLoadedState;

  @override
  $Res call({
    Object? favoriteList = freezed,
  }) {
    return _then(_FavoriteLoadedState(
      favoriteList == freezed
          ? _value.favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<Song>,
    ));
  }
}

/// @nodoc

class _$_FavoriteLoadedState implements _FavoriteLoadedState {
  const _$_FavoriteLoadedState(this.favoriteList);

  @override
  final List<Song> favoriteList;

  @override
  String toString() {
    return 'FavoriteState.loaded(favoriteList: $favoriteList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoriteLoadedState &&
            const DeepCollectionEquality()
                .equals(other.favoriteList, favoriteList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(favoriteList));

  @JsonKey(ignore: true)
  @override
  _$FavoriteLoadedStateCopyWith<_FavoriteLoadedState> get copyWith =>
      __$FavoriteLoadedStateCopyWithImpl<_FavoriteLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Song> favoriteList) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noFound,
  }) {
    return loaded(favoriteList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Song> favoriteList)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFound,
  }) {
    return loaded?.call(favoriteList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Song> favoriteList)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFound,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(favoriteList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteLoadedState value) loaded,
    required TResult Function(_FavoriteLoadingState value) loading,
    required TResult Function(_FavoriteErrorState value) error,
    required TResult Function(_FavoriteNoFoundState value) noFound,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FavoriteLoadedState value)? loaded,
    TResult Function(_FavoriteLoadingState value)? loading,
    TResult Function(_FavoriteErrorState value)? error,
    TResult Function(_FavoriteNoFoundState value)? noFound,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteLoadedState value)? loaded,
    TResult Function(_FavoriteLoadingState value)? loading,
    TResult Function(_FavoriteErrorState value)? error,
    TResult Function(_FavoriteNoFoundState value)? noFound,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _FavoriteLoadedState implements FavoriteState {
  const factory _FavoriteLoadedState(List<Song> favoriteList) =
      _$_FavoriteLoadedState;

  List<Song> get favoriteList;
  @JsonKey(ignore: true)
  _$FavoriteLoadedStateCopyWith<_FavoriteLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FavoriteLoadingStateCopyWith<$Res> {
  factory _$FavoriteLoadingStateCopyWith(_FavoriteLoadingState value,
          $Res Function(_FavoriteLoadingState) then) =
      __$FavoriteLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FavoriteLoadingStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteLoadingStateCopyWith<$Res> {
  __$FavoriteLoadingStateCopyWithImpl(
      _FavoriteLoadingState _value, $Res Function(_FavoriteLoadingState) _then)
      : super(_value, (v) => _then(v as _FavoriteLoadingState));

  @override
  _FavoriteLoadingState get _value => super._value as _FavoriteLoadingState;
}

/// @nodoc

class _$_FavoriteLoadingState implements _FavoriteLoadingState {
  const _$_FavoriteLoadingState();

  @override
  String toString() {
    return 'FavoriteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FavoriteLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Song> favoriteList) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noFound,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Song> favoriteList)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFound,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Song> favoriteList)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFound,
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
    required TResult Function(_FavoriteLoadedState value) loaded,
    required TResult Function(_FavoriteLoadingState value) loading,
    required TResult Function(_FavoriteErrorState value) error,
    required TResult Function(_FavoriteNoFoundState value) noFound,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FavoriteLoadedState value)? loaded,
    TResult Function(_FavoriteLoadingState value)? loading,
    TResult Function(_FavoriteErrorState value)? error,
    TResult Function(_FavoriteNoFoundState value)? noFound,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteLoadedState value)? loaded,
    TResult Function(_FavoriteLoadingState value)? loading,
    TResult Function(_FavoriteErrorState value)? error,
    TResult Function(_FavoriteNoFoundState value)? noFound,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FavoriteLoadingState implements FavoriteState {
  const factory _FavoriteLoadingState() = _$_FavoriteLoadingState;
}

/// @nodoc
abstract class _$FavoriteErrorStateCopyWith<$Res> {
  factory _$FavoriteErrorStateCopyWith(
          _FavoriteErrorState value, $Res Function(_FavoriteErrorState) then) =
      __$FavoriteErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FavoriteErrorStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteErrorStateCopyWith<$Res> {
  __$FavoriteErrorStateCopyWithImpl(
      _FavoriteErrorState _value, $Res Function(_FavoriteErrorState) _then)
      : super(_value, (v) => _then(v as _FavoriteErrorState));

  @override
  _FavoriteErrorState get _value => super._value as _FavoriteErrorState;
}

/// @nodoc

class _$_FavoriteErrorState implements _FavoriteErrorState {
  const _$_FavoriteErrorState();

  @override
  String toString() {
    return 'FavoriteState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FavoriteErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Song> favoriteList) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noFound,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Song> favoriteList)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFound,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Song> favoriteList)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFound,
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
    required TResult Function(_FavoriteLoadedState value) loaded,
    required TResult Function(_FavoriteLoadingState value) loading,
    required TResult Function(_FavoriteErrorState value) error,
    required TResult Function(_FavoriteNoFoundState value) noFound,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FavoriteLoadedState value)? loaded,
    TResult Function(_FavoriteLoadingState value)? loading,
    TResult Function(_FavoriteErrorState value)? error,
    TResult Function(_FavoriteNoFoundState value)? noFound,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteLoadedState value)? loaded,
    TResult Function(_FavoriteLoadingState value)? loading,
    TResult Function(_FavoriteErrorState value)? error,
    TResult Function(_FavoriteNoFoundState value)? noFound,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FavoriteErrorState implements FavoriteState {
  const factory _FavoriteErrorState() = _$_FavoriteErrorState;
}

/// @nodoc
abstract class _$FavoriteNoFoundStateCopyWith<$Res> {
  factory _$FavoriteNoFoundStateCopyWith(_FavoriteNoFoundState value,
          $Res Function(_FavoriteNoFoundState) then) =
      __$FavoriteNoFoundStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FavoriteNoFoundStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteNoFoundStateCopyWith<$Res> {
  __$FavoriteNoFoundStateCopyWithImpl(
      _FavoriteNoFoundState _value, $Res Function(_FavoriteNoFoundState) _then)
      : super(_value, (v) => _then(v as _FavoriteNoFoundState));

  @override
  _FavoriteNoFoundState get _value => super._value as _FavoriteNoFoundState;
}

/// @nodoc

class _$_FavoriteNoFoundState implements _FavoriteNoFoundState {
  const _$_FavoriteNoFoundState();

  @override
  String toString() {
    return 'FavoriteState.noFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FavoriteNoFoundState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Song> favoriteList) loaded,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() noFound,
  }) {
    return noFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Song> favoriteList)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFound,
  }) {
    return noFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Song> favoriteList)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? noFound,
    required TResult orElse(),
  }) {
    if (noFound != null) {
      return noFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteLoadedState value) loaded,
    required TResult Function(_FavoriteLoadingState value) loading,
    required TResult Function(_FavoriteErrorState value) error,
    required TResult Function(_FavoriteNoFoundState value) noFound,
  }) {
    return noFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FavoriteLoadedState value)? loaded,
    TResult Function(_FavoriteLoadingState value)? loading,
    TResult Function(_FavoriteErrorState value)? error,
    TResult Function(_FavoriteNoFoundState value)? noFound,
  }) {
    return noFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteLoadedState value)? loaded,
    TResult Function(_FavoriteLoadingState value)? loading,
    TResult Function(_FavoriteErrorState value)? error,
    TResult Function(_FavoriteNoFoundState value)? noFound,
    required TResult orElse(),
  }) {
    if (noFound != null) {
      return noFound(this);
    }
    return orElse();
  }
}

abstract class _FavoriteNoFoundState implements FavoriteState {
  const factory _FavoriteNoFoundState() = _$_FavoriteNoFoundState;
}
