// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchInitialState initial() {
    return const _SearchInitialState();
  }

  _SearchLoadingState loading() {
    return const _SearchLoadingState();
  }

  _SearchLoadedState loaded(List<Hit> searchList) {
    return _SearchLoadedState(
      searchList,
    );
  }

  _SearchNoFoundState noFound() {
    return const _SearchNoFoundState();
  }

  _SearchErrorState error() {
    return const _SearchErrorState();
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Hit> searchList) loaded,
    required TResult Function() noFound,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchLoadedState value) loaded,
    required TResult Function(_SearchNoFoundState value) noFound,
    required TResult Function(_SearchErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$SearchInitialStateCopyWith<$Res> {
  factory _$SearchInitialStateCopyWith(
          _SearchInitialState value, $Res Function(_SearchInitialState) then) =
      __$SearchInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchInitialStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchInitialStateCopyWith<$Res> {
  __$SearchInitialStateCopyWithImpl(
      _SearchInitialState _value, $Res Function(_SearchInitialState) _then)
      : super(_value, (v) => _then(v as _SearchInitialState));

  @override
  _SearchInitialState get _value => super._value as _SearchInitialState;
}

/// @nodoc

class _$_SearchInitialState implements _SearchInitialState {
  const _$_SearchInitialState();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearchInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Hit> searchList) loaded,
    required TResult Function() noFound,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
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
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchLoadedState value) loaded,
    required TResult Function(_SearchNoFoundState value) noFound,
    required TResult Function(_SearchErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchInitialState implements SearchState {
  const factory _SearchInitialState() = _$_SearchInitialState;
}

/// @nodoc
abstract class _$SearchLoadingStateCopyWith<$Res> {
  factory _$SearchLoadingStateCopyWith(
          _SearchLoadingState value, $Res Function(_SearchLoadingState) then) =
      __$SearchLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchLoadingStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchLoadingStateCopyWith<$Res> {
  __$SearchLoadingStateCopyWithImpl(
      _SearchLoadingState _value, $Res Function(_SearchLoadingState) _then)
      : super(_value, (v) => _then(v as _SearchLoadingState));

  @override
  _SearchLoadingState get _value => super._value as _SearchLoadingState;
}

/// @nodoc

class _$_SearchLoadingState implements _SearchLoadingState {
  const _$_SearchLoadingState();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearchLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Hit> searchList) loaded,
    required TResult Function() noFound,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
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
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchLoadedState value) loaded,
    required TResult Function(_SearchNoFoundState value) noFound,
    required TResult Function(_SearchErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadingState implements SearchState {
  const factory _SearchLoadingState() = _$_SearchLoadingState;
}

/// @nodoc
abstract class _$SearchLoadedStateCopyWith<$Res> {
  factory _$SearchLoadedStateCopyWith(
          _SearchLoadedState value, $Res Function(_SearchLoadedState) then) =
      __$SearchLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Hit> searchList});
}

/// @nodoc
class __$SearchLoadedStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchLoadedStateCopyWith<$Res> {
  __$SearchLoadedStateCopyWithImpl(
      _SearchLoadedState _value, $Res Function(_SearchLoadedState) _then)
      : super(_value, (v) => _then(v as _SearchLoadedState));

  @override
  _SearchLoadedState get _value => super._value as _SearchLoadedState;

  @override
  $Res call({
    Object? searchList = freezed,
  }) {
    return _then(_SearchLoadedState(
      searchList == freezed
          ? _value.searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<Hit>,
    ));
  }
}

/// @nodoc

class _$_SearchLoadedState implements _SearchLoadedState {
  const _$_SearchLoadedState(this.searchList);

  @override
  final List<Hit> searchList;

  @override
  String toString() {
    return 'SearchState.loaded(searchList: $searchList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchLoadedState &&
            const DeepCollectionEquality()
                .equals(other.searchList, searchList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(searchList));

  @JsonKey(ignore: true)
  @override
  _$SearchLoadedStateCopyWith<_SearchLoadedState> get copyWith =>
      __$SearchLoadedStateCopyWithImpl<_SearchLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Hit> searchList) loaded,
    required TResult Function() noFound,
    required TResult Function() error,
  }) {
    return loaded(searchList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
    TResult Function()? error,
  }) {
    return loaded?.call(searchList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(searchList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchLoadedState value) loaded,
    required TResult Function(_SearchNoFoundState value) noFound,
    required TResult Function(_SearchErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadedState implements SearchState {
  const factory _SearchLoadedState(List<Hit> searchList) = _$_SearchLoadedState;

  List<Hit> get searchList;
  @JsonKey(ignore: true)
  _$SearchLoadedStateCopyWith<_SearchLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchNoFoundStateCopyWith<$Res> {
  factory _$SearchNoFoundStateCopyWith(
          _SearchNoFoundState value, $Res Function(_SearchNoFoundState) then) =
      __$SearchNoFoundStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchNoFoundStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchNoFoundStateCopyWith<$Res> {
  __$SearchNoFoundStateCopyWithImpl(
      _SearchNoFoundState _value, $Res Function(_SearchNoFoundState) _then)
      : super(_value, (v) => _then(v as _SearchNoFoundState));

  @override
  _SearchNoFoundState get _value => super._value as _SearchNoFoundState;
}

/// @nodoc

class _$_SearchNoFoundState implements _SearchNoFoundState {
  const _$_SearchNoFoundState();

  @override
  String toString() {
    return 'SearchState.noFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearchNoFoundState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Hit> searchList) loaded,
    required TResult Function() noFound,
    required TResult Function() error,
  }) {
    return noFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
    TResult Function()? error,
  }) {
    return noFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
    TResult Function()? error,
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
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchLoadedState value) loaded,
    required TResult Function(_SearchNoFoundState value) noFound,
    required TResult Function(_SearchErrorState value) error,
  }) {
    return noFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
  }) {
    return noFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (noFound != null) {
      return noFound(this);
    }
    return orElse();
  }
}

abstract class _SearchNoFoundState implements SearchState {
  const factory _SearchNoFoundState() = _$_SearchNoFoundState;
}

/// @nodoc
abstract class _$SearchErrorStateCopyWith<$Res> {
  factory _$SearchErrorStateCopyWith(
          _SearchErrorState value, $Res Function(_SearchErrorState) then) =
      __$SearchErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchErrorStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchErrorStateCopyWith<$Res> {
  __$SearchErrorStateCopyWithImpl(
      _SearchErrorState _value, $Res Function(_SearchErrorState) _then)
      : super(_value, (v) => _then(v as _SearchErrorState));

  @override
  _SearchErrorState get _value => super._value as _SearchErrorState;
}

/// @nodoc

class _$_SearchErrorState implements _SearchErrorState {
  const _$_SearchErrorState();

  @override
  String toString() {
    return 'SearchState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearchErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Hit> searchList) loaded,
    required TResult Function() noFound,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Hit> searchList)? loaded,
    TResult Function()? noFound,
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
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchLoadedState value) loaded,
    required TResult Function(_SearchNoFoundState value) noFound,
    required TResult Function(_SearchErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchLoadedState value)? loaded,
    TResult Function(_SearchNoFoundState value)? noFound,
    TResult Function(_SearchErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SearchErrorState implements SearchState {
  const factory _SearchErrorState() = _$_SearchErrorState;
}
