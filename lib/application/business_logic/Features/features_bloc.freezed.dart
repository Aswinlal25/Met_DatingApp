// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'features_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeaturesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLikes,
    required TResult Function() getMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLikes,
    TResult? Function()? getMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLikes,
    TResult Function()? getMatches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLikes value) getLikes,
    required TResult Function(_GetMatches value) getMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLikes value)? getLikes,
    TResult? Function(_GetMatches value)? getMatches,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLikes value)? getLikes,
    TResult Function(_GetMatches value)? getMatches,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturesEventCopyWith<$Res> {
  factory $FeaturesEventCopyWith(
          FeaturesEvent value, $Res Function(FeaturesEvent) then) =
      _$FeaturesEventCopyWithImpl<$Res, FeaturesEvent>;
}

/// @nodoc
class _$FeaturesEventCopyWithImpl<$Res, $Val extends FeaturesEvent>
    implements $FeaturesEventCopyWith<$Res> {
  _$FeaturesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetLikesImplCopyWith<$Res> {
  factory _$$GetLikesImplCopyWith(
          _$GetLikesImpl value, $Res Function(_$GetLikesImpl) then) =
      __$$GetLikesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLikesImplCopyWithImpl<$Res>
    extends _$FeaturesEventCopyWithImpl<$Res, _$GetLikesImpl>
    implements _$$GetLikesImplCopyWith<$Res> {
  __$$GetLikesImplCopyWithImpl(
      _$GetLikesImpl _value, $Res Function(_$GetLikesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLikesImpl implements _GetLikes {
  _$GetLikesImpl();

  @override
  String toString() {
    return 'FeaturesEvent.getLikes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLikesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLikes,
    required TResult Function() getMatches,
  }) {
    return getLikes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLikes,
    TResult? Function()? getMatches,
  }) {
    return getLikes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLikes,
    TResult Function()? getMatches,
    required TResult orElse(),
  }) {
    if (getLikes != null) {
      return getLikes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLikes value) getLikes,
    required TResult Function(_GetMatches value) getMatches,
  }) {
    return getLikes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLikes value)? getLikes,
    TResult? Function(_GetMatches value)? getMatches,
  }) {
    return getLikes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLikes value)? getLikes,
    TResult Function(_GetMatches value)? getMatches,
    required TResult orElse(),
  }) {
    if (getLikes != null) {
      return getLikes(this);
    }
    return orElse();
  }
}

abstract class _GetLikes implements FeaturesEvent {
  factory _GetLikes() = _$GetLikesImpl;
}

/// @nodoc
abstract class _$$GetMatchesImplCopyWith<$Res> {
  factory _$$GetMatchesImplCopyWith(
          _$GetMatchesImpl value, $Res Function(_$GetMatchesImpl) then) =
      __$$GetMatchesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMatchesImplCopyWithImpl<$Res>
    extends _$FeaturesEventCopyWithImpl<$Res, _$GetMatchesImpl>
    implements _$$GetMatchesImplCopyWith<$Res> {
  __$$GetMatchesImplCopyWithImpl(
      _$GetMatchesImpl _value, $Res Function(_$GetMatchesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMatchesImpl implements _GetMatches {
  _$GetMatchesImpl();

  @override
  String toString() {
    return 'FeaturesEvent.getMatches()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMatchesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLikes,
    required TResult Function() getMatches,
  }) {
    return getMatches();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLikes,
    TResult? Function()? getMatches,
  }) {
    return getMatches?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLikes,
    TResult Function()? getMatches,
    required TResult orElse(),
  }) {
    if (getMatches != null) {
      return getMatches();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLikes value) getLikes,
    required TResult Function(_GetMatches value) getMatches,
  }) {
    return getMatches(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLikes value)? getLikes,
    TResult? Function(_GetMatches value)? getMatches,
  }) {
    return getMatches?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLikes value)? getLikes,
    TResult Function(_GetMatches value)? getMatches,
    required TResult orElse(),
  }) {
    if (getMatches != null) {
      return getMatches(this);
    }
    return orElse();
  }
}

abstract class _GetMatches implements FeaturesEvent {
  factory _GetMatches() = _$GetMatchesImpl;
}

/// @nodoc
mixin _$FeaturesState {
  bool get getLikesHasError => throw _privateConstructorUsedError;
  bool get getLikesisLoading => throw _privateConstructorUsedError;
  bool get getMatchdataLoading => throw _privateConstructorUsedError;
  bool get getMatchdataHasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetLikes? get getLikes => throw _privateConstructorUsedError;
  MatchModel? get matchModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeaturesStateCopyWith<FeaturesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturesStateCopyWith<$Res> {
  factory $FeaturesStateCopyWith(
          FeaturesState value, $Res Function(FeaturesState) then) =
      _$FeaturesStateCopyWithImpl<$Res, FeaturesState>;
  @useResult
  $Res call(
      {bool getLikesHasError,
      bool getLikesisLoading,
      bool getMatchdataLoading,
      bool getMatchdataHasError,
      String? message,
      GetLikes? getLikes,
      MatchModel? matchModel});
}

/// @nodoc
class _$FeaturesStateCopyWithImpl<$Res, $Val extends FeaturesState>
    implements $FeaturesStateCopyWith<$Res> {
  _$FeaturesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getLikesHasError = null,
    Object? getLikesisLoading = null,
    Object? getMatchdataLoading = null,
    Object? getMatchdataHasError = null,
    Object? message = freezed,
    Object? getLikes = freezed,
    Object? matchModel = freezed,
  }) {
    return _then(_value.copyWith(
      getLikesHasError: null == getLikesHasError
          ? _value.getLikesHasError
          : getLikesHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      getLikesisLoading: null == getLikesisLoading
          ? _value.getLikesisLoading
          : getLikesisLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getMatchdataLoading: null == getMatchdataLoading
          ? _value.getMatchdataLoading
          : getMatchdataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getMatchdataHasError: null == getMatchdataHasError
          ? _value.getMatchdataHasError
          : getMatchdataHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getLikes: freezed == getLikes
          ? _value.getLikes
          : getLikes // ignore: cast_nullable_to_non_nullable
              as GetLikes?,
      matchModel: freezed == matchModel
          ? _value.matchModel
          : matchModel // ignore: cast_nullable_to_non_nullable
              as MatchModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FeaturesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool getLikesHasError,
      bool getLikesisLoading,
      bool getMatchdataLoading,
      bool getMatchdataHasError,
      String? message,
      GetLikes? getLikes,
      MatchModel? matchModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FeaturesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getLikesHasError = null,
    Object? getLikesisLoading = null,
    Object? getMatchdataLoading = null,
    Object? getMatchdataHasError = null,
    Object? message = freezed,
    Object? getLikes = freezed,
    Object? matchModel = freezed,
  }) {
    return _then(_$InitialImpl(
      getLikesHasError: null == getLikesHasError
          ? _value.getLikesHasError
          : getLikesHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      getLikesisLoading: null == getLikesisLoading
          ? _value.getLikesisLoading
          : getLikesisLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getMatchdataLoading: null == getMatchdataLoading
          ? _value.getMatchdataLoading
          : getMatchdataLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getMatchdataHasError: null == getMatchdataHasError
          ? _value.getMatchdataHasError
          : getMatchdataHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getLikes: freezed == getLikes
          ? _value.getLikes
          : getLikes // ignore: cast_nullable_to_non_nullable
              as GetLikes?,
      matchModel: freezed == matchModel
          ? _value.matchModel
          : matchModel // ignore: cast_nullable_to_non_nullable
              as MatchModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.getLikesHasError,
      required this.getLikesisLoading,
      required this.getMatchdataLoading,
      required this.getMatchdataHasError,
      this.message,
      this.getLikes,
      this.matchModel});

  @override
  final bool getLikesHasError;
  @override
  final bool getLikesisLoading;
  @override
  final bool getMatchdataLoading;
  @override
  final bool getMatchdataHasError;
  @override
  final String? message;
  @override
  final GetLikes? getLikes;
  @override
  final MatchModel? matchModel;

  @override
  String toString() {
    return 'FeaturesState(getLikesHasError: $getLikesHasError, getLikesisLoading: $getLikesisLoading, getMatchdataLoading: $getMatchdataLoading, getMatchdataHasError: $getMatchdataHasError, message: $message, getLikes: $getLikes, matchModel: $matchModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getLikesHasError, getLikesHasError) ||
                other.getLikesHasError == getLikesHasError) &&
            (identical(other.getLikesisLoading, getLikesisLoading) ||
                other.getLikesisLoading == getLikesisLoading) &&
            (identical(other.getMatchdataLoading, getMatchdataLoading) ||
                other.getMatchdataLoading == getMatchdataLoading) &&
            (identical(other.getMatchdataHasError, getMatchdataHasError) ||
                other.getMatchdataHasError == getMatchdataHasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.getLikes, getLikes) ||
                other.getLikes == getLikes) &&
            (identical(other.matchModel, matchModel) ||
                other.matchModel == matchModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getLikesHasError,
      getLikesisLoading,
      getMatchdataLoading,
      getMatchdataHasError,
      message,
      getLikes,
      matchModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements FeaturesState {
  const factory _Initial(
      {required final bool getLikesHasError,
      required final bool getLikesisLoading,
      required final bool getMatchdataLoading,
      required final bool getMatchdataHasError,
      final String? message,
      final GetLikes? getLikes,
      final MatchModel? matchModel}) = _$InitialImpl;

  @override
  bool get getLikesHasError;
  @override
  bool get getLikesisLoading;
  @override
  bool get getMatchdataLoading;
  @override
  bool get getMatchdataHasError;
  @override
  String? get message;
  @override
  GetLikes? get getLikes;
  @override
  MatchModel? get matchModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
