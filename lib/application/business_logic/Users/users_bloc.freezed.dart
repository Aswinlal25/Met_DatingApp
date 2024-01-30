// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gethomedata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gethomedata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gethomedata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Gethomedata value) gethomedata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Gethomedata value)? gethomedata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Gethomedata value)? gethomedata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res, UsersEvent>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res, $Val extends UsersEvent>
    implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GethomedataImplCopyWith<$Res> {
  factory _$$GethomedataImplCopyWith(
          _$GethomedataImpl value, $Res Function(_$GethomedataImpl) then) =
      __$$GethomedataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GethomedataImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$GethomedataImpl>
    implements _$$GethomedataImplCopyWith<$Res> {
  __$$GethomedataImplCopyWithImpl(
      _$GethomedataImpl _value, $Res Function(_$GethomedataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GethomedataImpl implements _Gethomedata {
  _$GethomedataImpl();

  @override
  String toString() {
    return 'UsersEvent.gethomedata()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GethomedataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gethomedata,
  }) {
    return gethomedata();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gethomedata,
  }) {
    return gethomedata?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gethomedata,
    required TResult orElse(),
  }) {
    if (gethomedata != null) {
      return gethomedata();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Gethomedata value) gethomedata,
  }) {
    return gethomedata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Gethomedata value)? gethomedata,
  }) {
    return gethomedata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Gethomedata value)? gethomedata,
    required TResult orElse(),
  }) {
    if (gethomedata != null) {
      return gethomedata(this);
    }
    return orElse();
  }
}

abstract class _Gethomedata implements UsersEvent {
  factory _Gethomedata() = _$GethomedataImpl;
}

/// @nodoc
mixin _$UsersState {
  bool get homedataisLoading => throw _privateConstructorUsedError;
  bool get homedataHasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HomeResponse? get homeResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
  @useResult
  $Res call(
      {bool homedataisLoading,
      bool homedataHasError,
      String? message,
      HomeResponse? homeResponse});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homedataisLoading = null,
    Object? homedataHasError = null,
    Object? message = freezed,
    Object? homeResponse = freezed,
  }) {
    return _then(_value.copyWith(
      homedataisLoading: null == homedataisLoading
          ? _value.homedataisLoading
          : homedataisLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homedataHasError: null == homedataHasError
          ? _value.homedataHasError
          : homedataHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      homeResponse: freezed == homeResponse
          ? _value.homeResponse
          : homeResponse // ignore: cast_nullable_to_non_nullable
              as HomeResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool homedataisLoading,
      bool homedataHasError,
      String? message,
      HomeResponse? homeResponse});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homedataisLoading = null,
    Object? homedataHasError = null,
    Object? message = freezed,
    Object? homeResponse = freezed,
  }) {
    return _then(_$InitialImpl(
      homedataisLoading: null == homedataisLoading
          ? _value.homedataisLoading
          : homedataisLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homedataHasError: null == homedataHasError
          ? _value.homedataHasError
          : homedataHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      homeResponse: freezed == homeResponse
          ? _value.homeResponse
          : homeResponse // ignore: cast_nullable_to_non_nullable
              as HomeResponse?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.homedataisLoading,
      required this.homedataHasError,
      this.message,
      this.homeResponse});

  @override
  final bool homedataisLoading;
  @override
  final bool homedataHasError;
  @override
  final String? message;
  @override
  final HomeResponse? homeResponse;

  @override
  String toString() {
    return 'UsersState(homedataisLoading: $homedataisLoading, homedataHasError: $homedataHasError, message: $message, homeResponse: $homeResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.homedataisLoading, homedataisLoading) ||
                other.homedataisLoading == homedataisLoading) &&
            (identical(other.homedataHasError, homedataHasError) ||
                other.homedataHasError == homedataHasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.homeResponse, homeResponse) ||
                other.homeResponse == homeResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, homedataisLoading, homedataHasError, message, homeResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements UsersState {
  const factory _Initial(
      {required final bool homedataisLoading,
      required final bool homedataHasError,
      final String? message,
      final HomeResponse? homeResponse}) = _$InitialImpl;

  @override
  bool get homedataisLoading;
  @override
  bool get homedataHasError;
  @override
  String? get message;
  @override
  HomeResponse? get homeResponse;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
