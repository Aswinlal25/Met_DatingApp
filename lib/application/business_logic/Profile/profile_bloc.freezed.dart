// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  TokenModel get tokenModel => throw _privateConstructorUsedError;
  ProfileModel get profileModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenModel tokenModel, ProfileModel profileModel)
        makeprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenModel tokenModel, ProfileModel profileModel)?
        makeprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenModel tokenModel, ProfileModel profileModel)?
        makeprofile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Makeprofile value) makeprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Makeprofile value)? makeprofile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Makeprofile value)? makeprofile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEventCopyWith<ProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
  @useResult
  $Res call({TokenModel tokenModel, ProfileModel profileModel});
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenModel = null,
    Object? profileModel = freezed,
  }) {
    return _then(_value.copyWith(
      tokenModel: null == tokenModel
          ? _value.tokenModel
          : tokenModel // ignore: cast_nullable_to_non_nullable
              as TokenModel,
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MakeprofileImplCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory _$$MakeprofileImplCopyWith(
          _$MakeprofileImpl value, $Res Function(_$MakeprofileImpl) then) =
      __$$MakeprofileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenModel tokenModel, ProfileModel profileModel});
}

/// @nodoc
class __$$MakeprofileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$MakeprofileImpl>
    implements _$$MakeprofileImplCopyWith<$Res> {
  __$$MakeprofileImplCopyWithImpl(
      _$MakeprofileImpl _value, $Res Function(_$MakeprofileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenModel = null,
    Object? profileModel = freezed,
  }) {
    return _then(_$MakeprofileImpl(
      tokenModel: null == tokenModel
          ? _value.tokenModel
          : tokenModel // ignore: cast_nullable_to_non_nullable
              as TokenModel,
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
    ));
  }
}

/// @nodoc

class _$MakeprofileImpl implements _Makeprofile {
  const _$MakeprofileImpl(
      {required this.tokenModel, required this.profileModel});

  @override
  final TokenModel tokenModel;
  @override
  final ProfileModel profileModel;

  @override
  String toString() {
    return 'ProfileEvent.makeprofile(tokenModel: $tokenModel, profileModel: $profileModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeprofileImpl &&
            (identical(other.tokenModel, tokenModel) ||
                other.tokenModel == tokenModel) &&
            const DeepCollectionEquality()
                .equals(other.profileModel, profileModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tokenModel,
      const DeepCollectionEquality().hash(profileModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeprofileImplCopyWith<_$MakeprofileImpl> get copyWith =>
      __$$MakeprofileImplCopyWithImpl<_$MakeprofileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenModel tokenModel, ProfileModel profileModel)
        makeprofile,
  }) {
    return makeprofile(tokenModel, profileModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TokenModel tokenModel, ProfileModel profileModel)?
        makeprofile,
  }) {
    return makeprofile?.call(tokenModel, profileModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenModel tokenModel, ProfileModel profileModel)?
        makeprofile,
    required TResult orElse(),
  }) {
    if (makeprofile != null) {
      return makeprofile(tokenModel, profileModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Makeprofile value) makeprofile,
  }) {
    return makeprofile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Makeprofile value)? makeprofile,
  }) {
    return makeprofile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Makeprofile value)? makeprofile,
    required TResult orElse(),
  }) {
    if (makeprofile != null) {
      return makeprofile(this);
    }
    return orElse();
  }
}

abstract class _Makeprofile implements ProfileEvent {
  const factory _Makeprofile(
      {required final TokenModel tokenModel,
      required final ProfileModel profileModel}) = _$MakeprofileImpl;

  @override
  TokenModel get tokenModel;
  @override
  ProfileModel get profileModel;
  @override
  @JsonKey(ignore: true)
  _$$MakeprofileImplCopyWith<_$MakeprofileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  bool get dataHasError => throw _privateConstructorUsedError;
  bool get dataIsLoading => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ProfileModel? get profileModel => throw _privateConstructorUsedError;
  ProfileResponseModel? get profileResponseModel =>
      throw _privateConstructorUsedError;
  TokenModel? get tokenModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {bool dataHasError,
      bool dataIsLoading,
      String? message,
      ProfileModel? profileModel,
      ProfileResponseModel? profileResponseModel,
      TokenModel? tokenModel});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataHasError = null,
    Object? dataIsLoading = null,
    Object? message = freezed,
    Object? profileModel = freezed,
    Object? profileResponseModel = freezed,
    Object? tokenModel = freezed,
  }) {
    return _then(_value.copyWith(
      dataHasError: null == dataHasError
          ? _value.dataHasError
          : dataHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      dataIsLoading: null == dataIsLoading
          ? _value.dataIsLoading
          : dataIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
      profileResponseModel: freezed == profileResponseModel
          ? _value.profileResponseModel
          : profileResponseModel // ignore: cast_nullable_to_non_nullable
              as ProfileResponseModel?,
      tokenModel: freezed == tokenModel
          ? _value.tokenModel
          : tokenModel // ignore: cast_nullable_to_non_nullable
              as TokenModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool dataHasError,
      bool dataIsLoading,
      String? message,
      ProfileModel? profileModel,
      ProfileResponseModel? profileResponseModel,
      TokenModel? tokenModel});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataHasError = null,
    Object? dataIsLoading = null,
    Object? message = freezed,
    Object? profileModel = freezed,
    Object? profileResponseModel = freezed,
    Object? tokenModel = freezed,
  }) {
    return _then(_$InitialImpl(
      dataHasError: null == dataHasError
          ? _value.dataHasError
          : dataHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      dataIsLoading: null == dataIsLoading
          ? _value.dataIsLoading
          : dataIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      profileModel: freezed == profileModel
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
      profileResponseModel: freezed == profileResponseModel
          ? _value.profileResponseModel
          : profileResponseModel // ignore: cast_nullable_to_non_nullable
              as ProfileResponseModel?,
      tokenModel: freezed == tokenModel
          ? _value.tokenModel
          : tokenModel // ignore: cast_nullable_to_non_nullable
              as TokenModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.dataHasError,
      required this.dataIsLoading,
      this.message,
      this.profileModel,
      this.profileResponseModel,
      this.tokenModel});

  @override
  final bool dataHasError;
  @override
  final bool dataIsLoading;
  @override
  final String? message;
  @override
  final ProfileModel? profileModel;
  @override
  final ProfileResponseModel? profileResponseModel;
  @override
  final TokenModel? tokenModel;

  @override
  String toString() {
    return 'ProfileState(dataHasError: $dataHasError, dataIsLoading: $dataIsLoading, message: $message, profileModel: $profileModel, profileResponseModel: $profileResponseModel, tokenModel: $tokenModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.dataHasError, dataHasError) ||
                other.dataHasError == dataHasError) &&
            (identical(other.dataIsLoading, dataIsLoading) ||
                other.dataIsLoading == dataIsLoading) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other.profileModel, profileModel) &&
            const DeepCollectionEquality()
                .equals(other.profileResponseModel, profileResponseModel) &&
            (identical(other.tokenModel, tokenModel) ||
                other.tokenModel == tokenModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dataHasError,
      dataIsLoading,
      message,
      const DeepCollectionEquality().hash(profileModel),
      const DeepCollectionEquality().hash(profileResponseModel),
      tokenModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ProfileState {
  const factory _Initial(
      {required final bool dataHasError,
      required final bool dataIsLoading,
      final String? message,
      final ProfileModel? profileModel,
      final ProfileResponseModel? profileResponseModel,
      final TokenModel? tokenModel}) = _$InitialImpl;

  @override
  bool get dataHasError;
  @override
  bool get dataIsLoading;
  @override
  String? get message;
  @override
  ProfileModel? get profileModel;
  @override
  ProfileResponseModel? get profileResponseModel;
  @override
  TokenModel? get tokenModel;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
