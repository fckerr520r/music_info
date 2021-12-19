// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lyrics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LyricsModel _$LyricsModelFromJson(Map<String, dynamic> json) {
  return _LyricsModel.fromJson(json);
}

/// @nodoc
class _$LyricsModelTearOff {
  const _$LyricsModelTearOff();

  _LyricsModel call({required Message message}) {
    return _LyricsModel(
      message: message,
    );
  }

  LyricsModel fromJson(Map<String, Object?> json) {
    return LyricsModel.fromJson(json);
  }
}

/// @nodoc
const $LyricsModel = _$LyricsModelTearOff();

/// @nodoc
mixin _$LyricsModel {
  Message get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LyricsModelCopyWith<LyricsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricsModelCopyWith<$Res> {
  factory $LyricsModelCopyWith(
          LyricsModel value, $Res Function(LyricsModel) then) =
      _$LyricsModelCopyWithImpl<$Res>;
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$LyricsModelCopyWithImpl<$Res> implements $LyricsModelCopyWith<$Res> {
  _$LyricsModelCopyWithImpl(this._value, this._then);

  final LyricsModel _value;
  // ignore: unused_field
  final $Res Function(LyricsModel) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }

  @override
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class _$LyricsModelCopyWith<$Res>
    implements $LyricsModelCopyWith<$Res> {
  factory _$LyricsModelCopyWith(
          _LyricsModel value, $Res Function(_LyricsModel) then) =
      __$LyricsModelCopyWithImpl<$Res>;
  @override
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$LyricsModelCopyWithImpl<$Res> extends _$LyricsModelCopyWithImpl<$Res>
    implements _$LyricsModelCopyWith<$Res> {
  __$LyricsModelCopyWithImpl(
      _LyricsModel _value, $Res Function(_LyricsModel) _then)
      : super(_value, (v) => _then(v as _LyricsModel));

  @override
  _LyricsModel get _value => super._value as _LyricsModel;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LyricsModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LyricsModel implements _LyricsModel {
  const _$_LyricsModel({required this.message});

  factory _$_LyricsModel.fromJson(Map<String, dynamic> json) =>
      _$$_LyricsModelFromJson(json);

  @override
  final Message message;

  @override
  String toString() {
    return 'LyricsModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LyricsModel &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$LyricsModelCopyWith<_LyricsModel> get copyWith =>
      __$LyricsModelCopyWithImpl<_LyricsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LyricsModelToJson(this);
  }
}

abstract class _LyricsModel implements LyricsModel {
  const factory _LyricsModel({required Message message}) = _$_LyricsModel;

  factory _LyricsModel.fromJson(Map<String, dynamic> json) =
      _$_LyricsModel.fromJson;

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$LyricsModelCopyWith<_LyricsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call({required Header header, Body? body}) {
    return _Message(
      header: header,
      body: body,
    );
  }

  Message fromJson(Map<String, Object?> json) {
    return Message.fromJson(json);
  }
}

/// @nodoc
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  Header get header => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call({Header header, Body? body});

  $HeaderCopyWith<$Res> get header;
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as Header,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body?,
    ));
  }

  @override
  $HeaderCopyWith<$Res> get header {
    return $HeaderCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value));
    });
  }

  @override
  $BodyCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $BodyCopyWith<$Res>(_value.body!, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call({Header header, Body? body});

  @override
  $HeaderCopyWith<$Res> get header;
  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
  }) {
    return _then(_Message(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as Header,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Message implements _Message {
  const _$_Message({required this.header, this.body});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final Header header;
  @override
  final Body? body;

  @override
  String toString() {
    return 'Message(header: $header, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Message &&
            const DeepCollectionEquality().equals(other.header, header) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message({required Header header, Body? body}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  Header get header;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

Header _$HeaderFromJson(Map<String, dynamic> json) {
  return _Header.fromJson(json);
}

/// @nodoc
class _$HeaderTearOff {
  const _$HeaderTearOff();

  _Header call(
      {@JsonKey(name: 'status_code') required int statusCode,
      @JsonKey(name: 'execute_time') required double executeTime}) {
    return _Header(
      statusCode: statusCode,
      executeTime: executeTime,
    );
  }

  Header fromJson(Map<String, Object?> json) {
    return Header.fromJson(json);
  }
}

/// @nodoc
const $Header = _$HeaderTearOff();

/// @nodoc
mixin _$Header {
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'execute_time')
  double get executeTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeaderCopyWith<Header> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderCopyWith<$Res> {
  factory $HeaderCopyWith(Header value, $Res Function(Header) then) =
      _$HeaderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status_code') int statusCode,
      @JsonKey(name: 'execute_time') double executeTime});
}

/// @nodoc
class _$HeaderCopyWithImpl<$Res> implements $HeaderCopyWith<$Res> {
  _$HeaderCopyWithImpl(this._value, this._then);

  final Header _value;
  // ignore: unused_field
  final $Res Function(Header) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? executeTime = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      executeTime: executeTime == freezed
          ? _value.executeTime
          : executeTime // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$HeaderCopyWith<$Res> implements $HeaderCopyWith<$Res> {
  factory _$HeaderCopyWith(_Header value, $Res Function(_Header) then) =
      __$HeaderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status_code') int statusCode,
      @JsonKey(name: 'execute_time') double executeTime});
}

/// @nodoc
class __$HeaderCopyWithImpl<$Res> extends _$HeaderCopyWithImpl<$Res>
    implements _$HeaderCopyWith<$Res> {
  __$HeaderCopyWithImpl(_Header _value, $Res Function(_Header) _then)
      : super(_value, (v) => _then(v as _Header));

  @override
  _Header get _value => super._value as _Header;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? executeTime = freezed,
  }) {
    return _then(_Header(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      executeTime: executeTime == freezed
          ? _value.executeTime
          : executeTime // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Header implements _Header {
  const _$_Header(
      {@JsonKey(name: 'status_code') required this.statusCode,
      @JsonKey(name: 'execute_time') required this.executeTime});

  factory _$_Header.fromJson(Map<String, dynamic> json) =>
      _$$_HeaderFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final int statusCode;
  @override
  @JsonKey(name: 'execute_time')
  final double executeTime;

  @override
  String toString() {
    return 'Header(statusCode: $statusCode, executeTime: $executeTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Header &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality()
                .equals(other.executeTime, executeTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(executeTime));

  @JsonKey(ignore: true)
  @override
  _$HeaderCopyWith<_Header> get copyWith =>
      __$HeaderCopyWithImpl<_Header>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeaderToJson(this);
  }
}

abstract class _Header implements Header {
  const factory _Header(
      {@JsonKey(name: 'status_code') required int statusCode,
      @JsonKey(name: 'execute_time') required double executeTime}) = _$_Header;

  factory _Header.fromJson(Map<String, dynamic> json) = _$_Header.fromJson;

  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  @JsonKey(name: 'execute_time')
  double get executeTime;
  @override
  @JsonKey(ignore: true)
  _$HeaderCopyWith<_Header> get copyWith => throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
class _$BodyTearOff {
  const _$BodyTearOff();

  _Body call({Lyrics? lyrics}) {
    return _Body(
      lyrics: lyrics,
    );
  }

  Body fromJson(Map<String, Object?> json) {
    return Body.fromJson(json);
  }
}

/// @nodoc
const $Body = _$BodyTearOff();

/// @nodoc
mixin _$Body {
  Lyrics? get lyrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res>;
  $Res call({Lyrics? lyrics});

  $LyricsCopyWith<$Res>? get lyrics;
}

/// @nodoc
class _$BodyCopyWithImpl<$Res> implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(this._value, this._then);

  final Body _value;
  // ignore: unused_field
  final $Res Function(Body) _then;

  @override
  $Res call({
    Object? lyrics = freezed,
  }) {
    return _then(_value.copyWith(
      lyrics: lyrics == freezed
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as Lyrics?,
    ));
  }

  @override
  $LyricsCopyWith<$Res>? get lyrics {
    if (_value.lyrics == null) {
      return null;
    }

    return $LyricsCopyWith<$Res>(_value.lyrics!, (value) {
      return _then(_value.copyWith(lyrics: value));
    });
  }
}

/// @nodoc
abstract class _$BodyCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$BodyCopyWith(_Body value, $Res Function(_Body) then) =
      __$BodyCopyWithImpl<$Res>;
  @override
  $Res call({Lyrics? lyrics});

  @override
  $LyricsCopyWith<$Res>? get lyrics;
}

/// @nodoc
class __$BodyCopyWithImpl<$Res> extends _$BodyCopyWithImpl<$Res>
    implements _$BodyCopyWith<$Res> {
  __$BodyCopyWithImpl(_Body _value, $Res Function(_Body) _then)
      : super(_value, (v) => _then(v as _Body));

  @override
  _Body get _value => super._value as _Body;

  @override
  $Res call({
    Object? lyrics = freezed,
  }) {
    return _then(_Body(
      lyrics: lyrics == freezed
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as Lyrics?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Body implements _Body {
  const _$_Body({this.lyrics});

  factory _$_Body.fromJson(Map<String, dynamic> json) => _$$_BodyFromJson(json);

  @override
  final Lyrics? lyrics;

  @override
  String toString() {
    return 'Body(lyrics: $lyrics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Body &&
            const DeepCollectionEquality().equals(other.lyrics, lyrics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lyrics));

  @JsonKey(ignore: true)
  @override
  _$BodyCopyWith<_Body> get copyWith =>
      __$BodyCopyWithImpl<_Body>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BodyToJson(this);
  }
}

abstract class _Body implements Body {
  const factory _Body({Lyrics? lyrics}) = _$_Body;

  factory _Body.fromJson(Map<String, dynamic> json) = _$_Body.fromJson;

  @override
  Lyrics? get lyrics;
  @override
  @JsonKey(ignore: true)
  _$BodyCopyWith<_Body> get copyWith => throw _privateConstructorUsedError;
}

Lyrics _$LyricsFromJson(Map<String, dynamic> json) {
  return _Lyrics.fromJson(json);
}

/// @nodoc
class _$LyricsTearOff {
  const _$LyricsTearOff();

  _Lyrics call(
      {@JsonKey(name: 'lyrics_id') int lyricsId = 0,
      @JsonKey(name: 'lyrics_body') String? lyricsBody}) {
    return _Lyrics(
      lyricsId: lyricsId,
      lyricsBody: lyricsBody,
    );
  }

  Lyrics fromJson(Map<String, Object?> json) {
    return Lyrics.fromJson(json);
  }
}

/// @nodoc
const $Lyrics = _$LyricsTearOff();

/// @nodoc
mixin _$Lyrics {
  @JsonKey(name: 'lyrics_id')
  int get lyricsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lyrics_body')
  String? get lyricsBody => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LyricsCopyWith<Lyrics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricsCopyWith<$Res> {
  factory $LyricsCopyWith(Lyrics value, $Res Function(Lyrics) then) =
      _$LyricsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'lyrics_id') int lyricsId,
      @JsonKey(name: 'lyrics_body') String? lyricsBody});
}

/// @nodoc
class _$LyricsCopyWithImpl<$Res> implements $LyricsCopyWith<$Res> {
  _$LyricsCopyWithImpl(this._value, this._then);

  final Lyrics _value;
  // ignore: unused_field
  final $Res Function(Lyrics) _then;

  @override
  $Res call({
    Object? lyricsId = freezed,
    Object? lyricsBody = freezed,
  }) {
    return _then(_value.copyWith(
      lyricsId: lyricsId == freezed
          ? _value.lyricsId
          : lyricsId // ignore: cast_nullable_to_non_nullable
              as int,
      lyricsBody: lyricsBody == freezed
          ? _value.lyricsBody
          : lyricsBody // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LyricsCopyWith<$Res> implements $LyricsCopyWith<$Res> {
  factory _$LyricsCopyWith(_Lyrics value, $Res Function(_Lyrics) then) =
      __$LyricsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'lyrics_id') int lyricsId,
      @JsonKey(name: 'lyrics_body') String? lyricsBody});
}

/// @nodoc
class __$LyricsCopyWithImpl<$Res> extends _$LyricsCopyWithImpl<$Res>
    implements _$LyricsCopyWith<$Res> {
  __$LyricsCopyWithImpl(_Lyrics _value, $Res Function(_Lyrics) _then)
      : super(_value, (v) => _then(v as _Lyrics));

  @override
  _Lyrics get _value => super._value as _Lyrics;

  @override
  $Res call({
    Object? lyricsId = freezed,
    Object? lyricsBody = freezed,
  }) {
    return _then(_Lyrics(
      lyricsId: lyricsId == freezed
          ? _value.lyricsId
          : lyricsId // ignore: cast_nullable_to_non_nullable
              as int,
      lyricsBody: lyricsBody == freezed
          ? _value.lyricsBody
          : lyricsBody // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lyrics implements _Lyrics {
  const _$_Lyrics(
      {@JsonKey(name: 'lyrics_id') this.lyricsId = 0,
      @JsonKey(name: 'lyrics_body') this.lyricsBody});

  factory _$_Lyrics.fromJson(Map<String, dynamic> json) =>
      _$$_LyricsFromJson(json);

  @override
  @JsonKey(name: 'lyrics_id')
  final int lyricsId;
  @override
  @JsonKey(name: 'lyrics_body')
  final String? lyricsBody;

  @override
  String toString() {
    return 'Lyrics(lyricsId: $lyricsId, lyricsBody: $lyricsBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Lyrics &&
            const DeepCollectionEquality().equals(other.lyricsId, lyricsId) &&
            const DeepCollectionEquality()
                .equals(other.lyricsBody, lyricsBody));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lyricsId),
      const DeepCollectionEquality().hash(lyricsBody));

  @JsonKey(ignore: true)
  @override
  _$LyricsCopyWith<_Lyrics> get copyWith =>
      __$LyricsCopyWithImpl<_Lyrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LyricsToJson(this);
  }
}

abstract class _Lyrics implements Lyrics {
  const factory _Lyrics(
      {@JsonKey(name: 'lyrics_id') int lyricsId,
      @JsonKey(name: 'lyrics_body') String? lyricsBody}) = _$_Lyrics;

  factory _Lyrics.fromJson(Map<String, dynamic> json) = _$_Lyrics.fromJson;

  @override
  @JsonKey(name: 'lyrics_id')
  int get lyricsId;
  @override
  @JsonKey(name: 'lyrics_body')
  String? get lyricsBody;
  @override
  @JsonKey(ignore: true)
  _$LyricsCopyWith<_Lyrics> get copyWith => throw _privateConstructorUsedError;
}
