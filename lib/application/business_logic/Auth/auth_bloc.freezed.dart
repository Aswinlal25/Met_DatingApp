// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verifyOtpModel) otpVerify,
    required TResult Function() log,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verifyOtpModel)? otpVerify,
    TResult? Function()? log,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verifyOtpModel)? otpVerify,
    TResult Function()? log,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_OtpVerify value) otpVerify,
    required TResult Function(_Log value) log,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_OtpVerify value)? otpVerify,
    TResult? Function(_Log value)? log,
    TResult? Function(_SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_OtpVerify value)? otpVerify,
    TResult Function(_Log value)? log,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OtpLoginImplCopyWith<$Res> {
  factory _$$OtpLoginImplCopyWith(
          _$OtpLoginImpl value, $Res Function(_$OtpLoginImpl) then) =
      __$$OtpLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PhoneNumberModel phoneNumberModel});
}

/// @nodoc
class __$$OtpLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OtpLoginImpl>
    implements _$$OtpLoginImplCopyWith<$Res> {
  __$$OtpLoginImplCopyWithImpl(
      _$OtpLoginImpl _value, $Res Function(_$OtpLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberModel = null,
  }) {
    return _then(_$OtpLoginImpl(
      phoneNumberModel: null == phoneNumberModel
          ? _value.phoneNumberModel
          : phoneNumberModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel,
    ));
  }
}

/// @nodoc

class _$OtpLoginImpl implements _OtpLogin {
  const _$OtpLoginImpl({required this.phoneNumberModel});

  @override
  final PhoneNumberModel phoneNumberModel;

  @override
  String toString() {
    return 'AuthEvent.otpLogin(phoneNumberModel: $phoneNumberModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpLoginImpl &&
            (identical(other.phoneNumberModel, phoneNumberModel) ||
                other.phoneNumberModel == phoneNumberModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumberModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpLoginImplCopyWith<_$OtpLoginImpl> get copyWith =>
      __$$OtpLoginImplCopyWithImpl<_$OtpLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verifyOtpModel) otpVerify,
    required TResult Function() log,
    required TResult Function() signOut,
  }) {
    return otpLogin(phoneNumberModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verifyOtpModel)? otpVerify,
    TResult? Function()? log,
    TResult? Function()? signOut,
  }) {
    return otpLogin?.call(phoneNumberModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verifyOtpModel)? otpVerify,
    TResult Function()? log,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (otpLogin != null) {
      return otpLogin(phoneNumberModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_OtpVerify value) otpVerify,
    required TResult Function(_Log value) log,
    required TResult Function(_SignOut value) signOut,
  }) {
    return otpLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_OtpVerify value)? otpVerify,
    TResult? Function(_Log value)? log,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return otpLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_OtpVerify value)? otpVerify,
    TResult Function(_Log value)? log,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (otpLogin != null) {
      return otpLogin(this);
    }
    return orElse();
  }
}

abstract class _OtpLogin implements AuthEvent {
  const factory _OtpLogin({required final PhoneNumberModel phoneNumberModel}) =
      _$OtpLoginImpl;

  PhoneNumberModel get phoneNumberModel;
  @JsonKey(ignore: true)
  _$$OtpLoginImplCopyWith<_$OtpLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerifyImplCopyWith<$Res> {
  factory _$$OtpVerifyImplCopyWith(
          _$OtpVerifyImpl value, $Res Function(_$OtpVerifyImpl) then) =
      __$$OtpVerifyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerifyOtpModel verifyOtpModel});
}

/// @nodoc
class __$$OtpVerifyImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OtpVerifyImpl>
    implements _$$OtpVerifyImplCopyWith<$Res> {
  __$$OtpVerifyImplCopyWithImpl(
      _$OtpVerifyImpl _value, $Res Function(_$OtpVerifyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyOtpModel = null,
  }) {
    return _then(_$OtpVerifyImpl(
      verifyOtpModel: null == verifyOtpModel
          ? _value.verifyOtpModel
          : verifyOtpModel // ignore: cast_nullable_to_non_nullable
              as VerifyOtpModel,
    ));
  }
}

/// @nodoc

class _$OtpVerifyImpl implements _OtpVerify {
  const _$OtpVerifyImpl({required this.verifyOtpModel});

  @override
  final VerifyOtpModel verifyOtpModel;

  @override
  String toString() {
    return 'AuthEvent.otpVerify(verifyOtpModel: $verifyOtpModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerifyImpl &&
            (identical(other.verifyOtpModel, verifyOtpModel) ||
                other.verifyOtpModel == verifyOtpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyOtpModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerifyImplCopyWith<_$OtpVerifyImpl> get copyWith =>
      __$$OtpVerifyImplCopyWithImpl<_$OtpVerifyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verifyOtpModel) otpVerify,
    required TResult Function() log,
    required TResult Function() signOut,
  }) {
    return otpVerify(verifyOtpModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verifyOtpModel)? otpVerify,
    TResult? Function()? log,
    TResult? Function()? signOut,
  }) {
    return otpVerify?.call(verifyOtpModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verifyOtpModel)? otpVerify,
    TResult Function()? log,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (otpVerify != null) {
      return otpVerify(verifyOtpModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_OtpVerify value) otpVerify,
    required TResult Function(_Log value) log,
    required TResult Function(_SignOut value) signOut,
  }) {
    return otpVerify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_OtpVerify value)? otpVerify,
    TResult? Function(_Log value)? log,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return otpVerify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_OtpVerify value)? otpVerify,
    TResult Function(_Log value)? log,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (otpVerify != null) {
      return otpVerify(this);
    }
    return orElse();
  }
}

abstract class _OtpVerify implements AuthEvent {
  const factory _OtpVerify({required final VerifyOtpModel verifyOtpModel}) =
      _$OtpVerifyImpl;

  VerifyOtpModel get verifyOtpModel;
  @JsonKey(ignore: true)
  _$$OtpVerifyImplCopyWith<_$OtpVerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogImplCopyWith<$Res> {
  factory _$$LogImplCopyWith(_$LogImpl value, $Res Function(_$LogImpl) then) =
      __$$LogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogImpl>
    implements _$$LogImplCopyWith<$Res> {
  __$$LogImplCopyWithImpl(_$LogImpl _value, $Res Function(_$LogImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogImpl implements _Log {
  const _$LogImpl();

  @override
  String toString() {
    return 'AuthEvent.log()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verifyOtpModel) otpVerify,
    required TResult Function() log,
    required TResult Function() signOut,
  }) {
    return log();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verifyOtpModel)? otpVerify,
    TResult? Function()? log,
    TResult? Function()? signOut,
  }) {
    return log?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verifyOtpModel)? otpVerify,
    TResult Function()? log,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (log != null) {
      return log();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_OtpVerify value) otpVerify,
    required TResult Function(_Log value) log,
    required TResult Function(_SignOut value) signOut,
  }) {
    return log(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_OtpVerify value)? otpVerify,
    TResult? Function(_Log value)? log,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return log?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_OtpVerify value)? otpVerify,
    TResult Function(_Log value)? log,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (log != null) {
      return log(this);
    }
    return orElse();
  }
}

abstract class _Log implements AuthEvent {
  const factory _Log() = _$LogImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(VerifyOtpModel verifyOtpModel) otpVerify,
    required TResult Function() log,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(VerifyOtpModel verifyOtpModel)? otpVerify,
    TResult? Function()? log,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(VerifyOtpModel verifyOtpModel)? otpVerify,
    TResult Function()? log,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_OtpVerify value) otpVerify,
    required TResult Function(_Log value) log,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_OtpVerify value)? otpVerify,
    TResult? Function(_Log value)? log,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_OtpVerify value)? otpVerify,
    TResult Function(_Log value)? log,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get otpIsLoading => throw _privateConstructorUsedError;
  bool get otpHasError => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  bool get verifyOtpIsLoading => throw _privateConstructorUsedError;
  bool get verifyOtpHasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PhoneNumberResponseModel? get phoneNumberResponseModel =>
      throw _privateConstructorUsedError;
  VerifyOtpResponse? get verifyOtpResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool otpIsLoading,
      bool otpHasError,
      bool isLoggedIn,
      bool verifyOtpIsLoading,
      bool verifyOtpHasError,
      String? message,
      PhoneNumberResponseModel? phoneNumberResponseModel,
      VerifyOtpResponse? verifyOtpResponse});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpIsLoading = null,
    Object? otpHasError = null,
    Object? isLoggedIn = null,
    Object? verifyOtpIsLoading = null,
    Object? verifyOtpHasError = null,
    Object? message = freezed,
    Object? phoneNumberResponseModel = freezed,
    Object? verifyOtpResponse = freezed,
  }) {
    return _then(_value.copyWith(
      otpIsLoading: null == otpIsLoading
          ? _value.otpIsLoading
          : otpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpHasError: null == otpHasError
          ? _value.otpHasError
          : otpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpIsLoading: null == verifyOtpIsLoading
          ? _value.verifyOtpIsLoading
          : verifyOtpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpHasError: null == verifyOtpHasError
          ? _value.verifyOtpHasError
          : verifyOtpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberResponseModel: freezed == phoneNumberResponseModel
          ? _value.phoneNumberResponseModel
          : phoneNumberResponseModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberResponseModel?,
      verifyOtpResponse: freezed == verifyOtpResponse
          ? _value.verifyOtpResponse
          : verifyOtpResponse // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool otpIsLoading,
      bool otpHasError,
      bool isLoggedIn,
      bool verifyOtpIsLoading,
      bool verifyOtpHasError,
      String? message,
      PhoneNumberResponseModel? phoneNumberResponseModel,
      VerifyOtpResponse? verifyOtpResponse});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpIsLoading = null,
    Object? otpHasError = null,
    Object? isLoggedIn = null,
    Object? verifyOtpIsLoading = null,
    Object? verifyOtpHasError = null,
    Object? message = freezed,
    Object? phoneNumberResponseModel = freezed,
    Object? verifyOtpResponse = freezed,
  }) {
    return _then(_$InitialImpl(
      otpIsLoading: null == otpIsLoading
          ? _value.otpIsLoading
          : otpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpHasError: null == otpHasError
          ? _value.otpHasError
          : otpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpIsLoading: null == verifyOtpIsLoading
          ? _value.verifyOtpIsLoading
          : verifyOtpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpHasError: null == verifyOtpHasError
          ? _value.verifyOtpHasError
          : verifyOtpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberResponseModel: freezed == phoneNumberResponseModel
          ? _value.phoneNumberResponseModel
          : phoneNumberResponseModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberResponseModel?,
      verifyOtpResponse: freezed == verifyOtpResponse
          ? _value.verifyOtpResponse
          : verifyOtpResponse // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponse?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.otpIsLoading,
      required this.otpHasError,
      required this.isLoggedIn,
      required this.verifyOtpIsLoading,
      required this.verifyOtpHasError,
      this.message,
      this.phoneNumberResponseModel,
      this.verifyOtpResponse});

  @override
  final bool otpIsLoading;
  @override
  final bool otpHasError;
  @override
  final bool isLoggedIn;
  @override
  final bool verifyOtpIsLoading;
  @override
  final bool verifyOtpHasError;
  @override
  final String? message;
  @override
  final PhoneNumberResponseModel? phoneNumberResponseModel;
  @override
  final VerifyOtpResponse? verifyOtpResponse;

  @override
  String toString() {
    return 'AuthState(otpIsLoading: $otpIsLoading, otpHasError: $otpHasError, isLoggedIn: $isLoggedIn, verifyOtpIsLoading: $verifyOtpIsLoading, verifyOtpHasError: $verifyOtpHasError, message: $message, phoneNumberResponseModel: $phoneNumberResponseModel, verifyOtpResponse: $verifyOtpResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.otpIsLoading, otpIsLoading) ||
                other.otpIsLoading == otpIsLoading) &&
            (identical(other.otpHasError, otpHasError) ||
                other.otpHasError == otpHasError) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.verifyOtpIsLoading, verifyOtpIsLoading) ||
                other.verifyOtpIsLoading == verifyOtpIsLoading) &&
            (identical(other.verifyOtpHasError, verifyOtpHasError) ||
                other.verifyOtpHasError == verifyOtpHasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(
                    other.phoneNumberResponseModel, phoneNumberResponseModel) ||
                other.phoneNumberResponseModel == phoneNumberResponseModel) &&
            (identical(other.verifyOtpResponse, verifyOtpResponse) ||
                other.verifyOtpResponse == verifyOtpResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      otpIsLoading,
      otpHasError,
      isLoggedIn,
      verifyOtpIsLoading,
      verifyOtpHasError,
      message,
      phoneNumberResponseModel,
      verifyOtpResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {required final bool otpIsLoading,
      required final bool otpHasError,
      required final bool isLoggedIn,
      required final bool verifyOtpIsLoading,
      required final bool verifyOtpHasError,
      final String? message,
      final PhoneNumberResponseModel? phoneNumberResponseModel,
      final VerifyOtpResponse? verifyOtpResponse}) = _$InitialImpl;

  @override
  bool get otpIsLoading;
  @override
  bool get otpHasError;
  @override
  bool get isLoggedIn;
  @override
  bool get verifyOtpIsLoading;
  @override
  bool get verifyOtpHasError;
  @override
  String? get message;
  @override
  PhoneNumberResponseModel? get phoneNumberResponseModel;
  @override
  VerifyOtpResponse? get verifyOtpResponse;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
