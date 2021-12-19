// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) {
  return _SearchModel.fromJson(json);
}

/// @nodoc
class _$SearchModelTearOff {
  const _$SearchModelTearOff();

  _SearchModel call({required Message message}) {
    return _SearchModel(
      message: message,
    );
  }

  SearchModel fromJson(Map<String, Object?> json) {
    return SearchModel.fromJson(json);
  }
}

/// @nodoc
const $SearchModel = _$SearchModelTearOff();

/// @nodoc
mixin _$SearchModel {
  Message get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res>;
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res> implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  final SearchModel _value;
  // ignore: unused_field
  final $Res Function(SearchModel) _then;

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
abstract class _$SearchModelCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$SearchModelCopyWith(
          _SearchModel value, $Res Function(_SearchModel) then) =
      __$SearchModelCopyWithImpl<$Res>;
  @override
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$SearchModelCopyWithImpl<$Res> extends _$SearchModelCopyWithImpl<$Res>
    implements _$SearchModelCopyWith<$Res> {
  __$SearchModelCopyWithImpl(
      _SearchModel _value, $Res Function(_SearchModel) _then)
      : super(_value, (v) => _then(v as _SearchModel));

  @override
  _SearchModel get _value => super._value as _SearchModel;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_SearchModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchModel implements _SearchModel {
  const _$_SearchModel({required this.message});

  factory _$_SearchModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchModelFromJson(json);

  @override
  final Message message;

  @override
  String toString() {
    return 'SearchModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchModel &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$SearchModelCopyWith<_SearchModel> get copyWith =>
      __$SearchModelCopyWithImpl<_SearchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchModelToJson(this);
  }
}

abstract class _SearchModel implements SearchModel {
  const factory _SearchModel({required Message message}) = _$_SearchModel;

  factory _SearchModel.fromJson(Map<String, dynamic> json) =
      _$_SearchModel.fromJson;

  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$SearchModelCopyWith<_SearchModel> get copyWith =>
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

  _Body call(
      {@JsonKey(name: 'track_list')
          List<TrackList> trackList = const <TrackList>[]}) {
    return _Body(
      trackList: trackList,
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
  @JsonKey(name: 'track_list')
  List<TrackList> get trackList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'track_list') List<TrackList> trackList});
}

/// @nodoc
class _$BodyCopyWithImpl<$Res> implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(this._value, this._then);

  final Body _value;
  // ignore: unused_field
  final $Res Function(Body) _then;

  @override
  $Res call({
    Object? trackList = freezed,
  }) {
    return _then(_value.copyWith(
      trackList: trackList == freezed
          ? _value.trackList
          : trackList // ignore: cast_nullable_to_non_nullable
              as List<TrackList>,
    ));
  }
}

/// @nodoc
abstract class _$BodyCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$BodyCopyWith(_Body value, $Res Function(_Body) then) =
      __$BodyCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'track_list') List<TrackList> trackList});
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
    Object? trackList = freezed,
  }) {
    return _then(_Body(
      trackList: trackList == freezed
          ? _value.trackList
          : trackList // ignore: cast_nullable_to_non_nullable
              as List<TrackList>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Body implements _Body {
  const _$_Body(
      {@JsonKey(name: 'track_list') this.trackList = const <TrackList>[]});

  factory _$_Body.fromJson(Map<String, dynamic> json) => _$$_BodyFromJson(json);

  @override
  @JsonKey(name: 'track_list')
  final List<TrackList> trackList;

  @override
  String toString() {
    return 'Body(trackList: $trackList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Body &&
            const DeepCollectionEquality().equals(other.trackList, trackList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(trackList));

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
  const factory _Body(
      {@JsonKey(name: 'track_list') List<TrackList> trackList}) = _$_Body;

  factory _Body.fromJson(Map<String, dynamic> json) = _$_Body.fromJson;

  @override
  @JsonKey(name: 'track_list')
  List<TrackList> get trackList;
  @override
  @JsonKey(ignore: true)
  _$BodyCopyWith<_Body> get copyWith => throw _privateConstructorUsedError;
}

TrackList _$TrackListFromJson(Map<String, dynamic> json) {
  return _TrackList.fromJson(json);
}

/// @nodoc
class _$TrackListTearOff {
  const _$TrackListTearOff();

  _TrackList call({Track? track}) {
    return _TrackList(
      track: track,
    );
  }

  TrackList fromJson(Map<String, Object?> json) {
    return TrackList.fromJson(json);
  }
}

/// @nodoc
const $TrackList = _$TrackListTearOff();

/// @nodoc
mixin _$TrackList {
  Track? get track => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackListCopyWith<TrackList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackListCopyWith<$Res> {
  factory $TrackListCopyWith(TrackList value, $Res Function(TrackList) then) =
      _$TrackListCopyWithImpl<$Res>;
  $Res call({Track? track});

  $TrackCopyWith<$Res>? get track;
}

/// @nodoc
class _$TrackListCopyWithImpl<$Res> implements $TrackListCopyWith<$Res> {
  _$TrackListCopyWithImpl(this._value, this._then);

  final TrackList _value;
  // ignore: unused_field
  final $Res Function(TrackList) _then;

  @override
  $Res call({
    Object? track = freezed,
  }) {
    return _then(_value.copyWith(
      track: track == freezed
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
    ));
  }

  @override
  $TrackCopyWith<$Res>? get track {
    if (_value.track == null) {
      return null;
    }

    return $TrackCopyWith<$Res>(_value.track!, (value) {
      return _then(_value.copyWith(track: value));
    });
  }
}

/// @nodoc
abstract class _$TrackListCopyWith<$Res> implements $TrackListCopyWith<$Res> {
  factory _$TrackListCopyWith(
          _TrackList value, $Res Function(_TrackList) then) =
      __$TrackListCopyWithImpl<$Res>;
  @override
  $Res call({Track? track});

  @override
  $TrackCopyWith<$Res>? get track;
}

/// @nodoc
class __$TrackListCopyWithImpl<$Res> extends _$TrackListCopyWithImpl<$Res>
    implements _$TrackListCopyWith<$Res> {
  __$TrackListCopyWithImpl(_TrackList _value, $Res Function(_TrackList) _then)
      : super(_value, (v) => _then(v as _TrackList));

  @override
  _TrackList get _value => super._value as _TrackList;

  @override
  $Res call({
    Object? track = freezed,
  }) {
    return _then(_TrackList(
      track: track == freezed
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TrackList implements _TrackList {
  const _$_TrackList({this.track});

  factory _$_TrackList.fromJson(Map<String, dynamic> json) =>
      _$$_TrackListFromJson(json);

  @override
  final Track? track;

  @override
  String toString() {
    return 'TrackList(track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrackList &&
            const DeepCollectionEquality().equals(other.track, track));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(track));

  @JsonKey(ignore: true)
  @override
  _$TrackListCopyWith<_TrackList> get copyWith =>
      __$TrackListCopyWithImpl<_TrackList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackListToJson(this);
  }
}

abstract class _TrackList implements TrackList {
  const factory _TrackList({Track? track}) = _$_TrackList;

  factory _TrackList.fromJson(Map<String, dynamic> json) =
      _$_TrackList.fromJson;

  @override
  Track? get track;
  @override
  @JsonKey(ignore: true)
  _$TrackListCopyWith<_TrackList> get copyWith =>
      throw _privateConstructorUsedError;
}

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

/// @nodoc
class _$TrackTearOff {
  const _$TrackTearOff();

  _Track call(
      {@JsonKey(name: 'track_id') int trackId = 0,
      @JsonKey(name: 'track_name') String? trackName,
      @JsonKey(name: 'artist_name') String artistName = ''}) {
    return _Track(
      trackId: trackId,
      trackName: trackName,
      artistName: artistName,
    );
  }

  Track fromJson(Map<String, Object?> json) {
    return Track.fromJson(json);
  }
}

/// @nodoc
const $Track = _$TrackTearOff();

/// @nodoc
mixin _$Track {
  @JsonKey(name: 'track_id')
  int get trackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_name')
  String? get trackName => throw _privateConstructorUsedError;
  @JsonKey(name: 'artist_name')
  String get artistName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'track_id') int trackId,
      @JsonKey(name: 'track_name') String? trackName,
      @JsonKey(name: 'artist_name') String artistName});
}

/// @nodoc
class _$TrackCopyWithImpl<$Res> implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  final Track _value;
  // ignore: unused_field
  final $Res Function(Track) _then;

  @override
  $Res call({
    Object? trackId = freezed,
    Object? trackName = freezed,
    Object? artistName = freezed,
  }) {
    return _then(_value.copyWith(
      trackId: trackId == freezed
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as int,
      trackName: trackName == freezed
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TrackCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$TrackCopyWith(_Track value, $Res Function(_Track) then) =
      __$TrackCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'track_id') int trackId,
      @JsonKey(name: 'track_name') String? trackName,
      @JsonKey(name: 'artist_name') String artistName});
}

/// @nodoc
class __$TrackCopyWithImpl<$Res> extends _$TrackCopyWithImpl<$Res>
    implements _$TrackCopyWith<$Res> {
  __$TrackCopyWithImpl(_Track _value, $Res Function(_Track) _then)
      : super(_value, (v) => _then(v as _Track));

  @override
  _Track get _value => super._value as _Track;

  @override
  $Res call({
    Object? trackId = freezed,
    Object? trackName = freezed,
    Object? artistName = freezed,
  }) {
    return _then(_Track(
      trackId: trackId == freezed
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as int,
      trackName: trackName == freezed
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Track implements _Track {
  const _$_Track(
      {@JsonKey(name: 'track_id') this.trackId = 0,
      @JsonKey(name: 'track_name') this.trackName,
      @JsonKey(name: 'artist_name') this.artistName = ''});

  factory _$_Track.fromJson(Map<String, dynamic> json) =>
      _$$_TrackFromJson(json);

  @override
  @JsonKey(name: 'track_id')
  final int trackId;
  @override
  @JsonKey(name: 'track_name')
  final String? trackName;
  @override
  @JsonKey(name: 'artist_name')
  final String artistName;

  @override
  String toString() {
    return 'Track(trackId: $trackId, trackName: $trackName, artistName: $artistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Track &&
            const DeepCollectionEquality().equals(other.trackId, trackId) &&
            const DeepCollectionEquality().equals(other.trackName, trackName) &&
            const DeepCollectionEquality()
                .equals(other.artistName, artistName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(trackId),
      const DeepCollectionEquality().hash(trackName),
      const DeepCollectionEquality().hash(artistName));

  @JsonKey(ignore: true)
  @override
  _$TrackCopyWith<_Track> get copyWith =>
      __$TrackCopyWithImpl<_Track>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackToJson(this);
  }
}

abstract class _Track implements Track {
  const factory _Track(
      {@JsonKey(name: 'track_id') int trackId,
      @JsonKey(name: 'track_name') String? trackName,
      @JsonKey(name: 'artist_name') String artistName}) = _$_Track;

  factory _Track.fromJson(Map<String, dynamic> json) = _$_Track.fromJson;

  @override
  @JsonKey(name: 'track_id')
  int get trackId;
  @override
  @JsonKey(name: 'track_name')
  String? get trackName;
  @override
  @JsonKey(name: 'artist_name')
  String get artistName;
  @override
  @JsonKey(ignore: true)
  _$TrackCopyWith<_Track> get copyWith => throw _privateConstructorUsedError;
}
