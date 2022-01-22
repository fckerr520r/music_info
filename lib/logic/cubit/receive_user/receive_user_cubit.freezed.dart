// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receive_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReceiveUserStateTearOff {
  const _$ReceiveUserStateTearOff();

  _ReceiveUserInitialState loading() {
    return const _ReceiveUserInitialState();
  }

  _ReceiveUserLoadedState loaded(User? user) {
    return _ReceiveUserLoadedState(
      user,
    );
  }

  _ReceiveUserErrorState error() {
    return const _ReceiveUserErrorState();
  }
}

/// @nodoc
const $ReceiveUserState = _$ReceiveUserStateTearOff();

/// @nodoc
mixin _$ReceiveUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReceiveUserInitialState value) loading,
    required TResult Function(_ReceiveUserLoadedState value) loaded,
    required TResult Function(_ReceiveUserErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReceiveUserInitialState value)? loading,
    TResult Function(_ReceiveUserLoadedState value)? loaded,
    TResult Function(_ReceiveUserErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReceiveUserInitialState value)? loading,
    TResult Function(_ReceiveUserLoadedState value)? loaded,
    TResult Function(_ReceiveUserErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveUserStateCopyWith<$Res> {
  factory $ReceiveUserStateCopyWith(
          ReceiveUserState value, $Res Function(ReceiveUserState) then) =
      _$ReceiveUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReceiveUserStateCopyWithImpl<$Res>
    implements $ReceiveUserStateCopyWith<$Res> {
  _$ReceiveUserStateCopyWithImpl(this._value, this._then);

  final ReceiveUserState _value;
  // ignore: unused_field
  final $Res Function(ReceiveUserState) _then;
}

/// @nodoc
abstract class _$ReceiveUserInitialStateCopyWith<$Res> {
  factory _$ReceiveUserInitialStateCopyWith(_ReceiveUserInitialState value,
          $Res Function(_ReceiveUserInitialState) then) =
      __$ReceiveUserInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReceiveUserInitialStateCopyWithImpl<$Res>
    extends _$ReceiveUserStateCopyWithImpl<$Res>
    implements _$ReceiveUserInitialStateCopyWith<$Res> {
  __$ReceiveUserInitialStateCopyWithImpl(_ReceiveUserInitialState _value,
      $Res Function(_ReceiveUserInitialState) _then)
      : super(_value, (v) => _then(v as _ReceiveUserInitialState));

  @override
  _ReceiveUserInitialState get _value =>
      super._value as _ReceiveUserInitialState;
}

/// @nodoc

class _$_ReceiveUserInitialState implements _ReceiveUserInitialState {
  const _$_ReceiveUserInitialState();

  @override
  String toString() {
    return 'ReceiveUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ReceiveUserInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
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
    required TResult Function(_ReceiveUserInitialState value) loading,
    required TResult Function(_ReceiveUserLoadedState value) loaded,
    required TResult Function(_ReceiveUserErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReceiveUserInitialState value)? loading,
    TResult Function(_ReceiveUserLoadedState value)? loaded,
    TResult Function(_ReceiveUserErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReceiveUserInitialState value)? loading,
    TResult Function(_ReceiveUserLoadedState value)? loaded,
    TResult Function(_ReceiveUserErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ReceiveUserInitialState implements ReceiveUserState {
  const factory _ReceiveUserInitialState() = _$_ReceiveUserInitialState;
}

/// @nodoc
abstract class _$ReceiveUserLoadedStateCopyWith<$Res> {
  factory _$ReceiveUserLoadedStateCopyWith(_ReceiveUserLoadedState value,
          $Res Function(_ReceiveUserLoadedState) then) =
      __$ReceiveUserLoadedStateCopyWithImpl<$Res>;
  $Res call({User? user});
}

/// @nodoc
class __$ReceiveUserLoadedStateCopyWithImpl<$Res>
    extends _$ReceiveUserStateCopyWithImpl<$Res>
    implements _$ReceiveUserLoadedStateCopyWith<$Res> {
  __$ReceiveUserLoadedStateCopyWithImpl(_ReceiveUserLoadedState _value,
      $Res Function(_ReceiveUserLoadedState) _then)
      : super(_value, (v) => _then(v as _ReceiveUserLoadedState));

  @override
  _ReceiveUserLoadedState get _value => super._value as _ReceiveUserLoadedState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_ReceiveUserLoadedState(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_ReceiveUserLoadedState implements _ReceiveUserLoadedState {
  const _$_ReceiveUserLoadedState(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'ReceiveUserState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceiveUserLoadedState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$ReceiveUserLoadedStateCopyWith<_ReceiveUserLoadedState> get copyWith =>
      __$ReceiveUserLoadedStateCopyWithImpl<_ReceiveUserLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function() error,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReceiveUserInitialState value) loading,
    required TResult Function(_ReceiveUserLoadedState value) loaded,
    required TResult Function(_ReceiveUserErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReceiveUserInitialState value)? loading,
    TResult Function(_ReceiveUserLoadedState value)? loaded,
    TResult Function(_ReceiveUserErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReceiveUserInitialState value)? loading,
    TResult Function(_ReceiveUserLoadedState value)? loaded,
    TResult Function(_ReceiveUserErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ReceiveUserLoadedState implements ReceiveUserState {
  const factory _ReceiveUserLoadedState(User? user) = _$_ReceiveUserLoadedState;

  User? get user;
  @JsonKey(ignore: true)
  _$ReceiveUserLoadedStateCopyWith<_ReceiveUserLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReceiveUserErrorStateCopyWith<$Res> {
  factory _$ReceiveUserErrorStateCopyWith(_ReceiveUserErrorState value,
          $Res Function(_ReceiveUserErrorState) then) =
      __$ReceiveUserErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReceiveUserErrorStateCopyWithImpl<$Res>
    extends _$ReceiveUserStateCopyWithImpl<$Res>
    implements _$ReceiveUserErrorStateCopyWith<$Res> {
  __$ReceiveUserErrorStateCopyWithImpl(_ReceiveUserErrorState _value,
      $Res Function(_ReceiveUserErrorState) _then)
      : super(_value, (v) => _then(v as _ReceiveUserErrorState));

  @override
  _ReceiveUserErrorState get _value => super._value as _ReceiveUserErrorState;
}

/// @nodoc

class _$_ReceiveUserErrorState implements _ReceiveUserErrorState {
  const _$_ReceiveUserErrorState();

  @override
  String toString() {
    return 'ReceiveUserState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ReceiveUserErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? loaded,
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
    required TResult Function(_ReceiveUserInitialState value) loading,
    required TResult Function(_ReceiveUserLoadedState value) loaded,
    required TResult Function(_ReceiveUserErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReceiveUserInitialState value)? loading,
    TResult Function(_ReceiveUserLoadedState value)? loaded,
    TResult Function(_ReceiveUserErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReceiveUserInitialState value)? loading,
    TResult Function(_ReceiveUserLoadedState value)? loaded,
    TResult Function(_ReceiveUserErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ReceiveUserErrorState implements ReceiveUserState {
  const factory _ReceiveUserErrorState() = _$_ReceiveUserErrorState;
}
