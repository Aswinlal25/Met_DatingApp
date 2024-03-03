// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChatUsers,
    required TResult Function(String? chatId) getAllMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChatUsers,
    TResult? Function(String? chatId)? getAllMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChatUsers,
    TResult Function(String? chatId)? getAllMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatUsers value) getChatUsers,
    required TResult Function(_GetAllMessages value) getAllMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatUsers value)? getChatUsers,
    TResult? Function(_GetAllMessages value)? getAllMessages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatUsers value)? getChatUsers,
    TResult Function(_GetAllMessages value)? getAllMessages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetChatUsersImplCopyWith<$Res> {
  factory _$$GetChatUsersImplCopyWith(
          _$GetChatUsersImpl value, $Res Function(_$GetChatUsersImpl) then) =
      __$$GetChatUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetChatUsersImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetChatUsersImpl>
    implements _$$GetChatUsersImplCopyWith<$Res> {
  __$$GetChatUsersImplCopyWithImpl(
      _$GetChatUsersImpl _value, $Res Function(_$GetChatUsersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetChatUsersImpl implements _GetChatUsers {
  _$GetChatUsersImpl();

  @override
  String toString() {
    return 'ChatEvent.getChatUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetChatUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChatUsers,
    required TResult Function(String? chatId) getAllMessages,
  }) {
    return getChatUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChatUsers,
    TResult? Function(String? chatId)? getAllMessages,
  }) {
    return getChatUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChatUsers,
    TResult Function(String? chatId)? getAllMessages,
    required TResult orElse(),
  }) {
    if (getChatUsers != null) {
      return getChatUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatUsers value) getChatUsers,
    required TResult Function(_GetAllMessages value) getAllMessages,
  }) {
    return getChatUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatUsers value)? getChatUsers,
    TResult? Function(_GetAllMessages value)? getAllMessages,
  }) {
    return getChatUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatUsers value)? getChatUsers,
    TResult Function(_GetAllMessages value)? getAllMessages,
    required TResult orElse(),
  }) {
    if (getChatUsers != null) {
      return getChatUsers(this);
    }
    return orElse();
  }
}

abstract class _GetChatUsers implements ChatEvent {
  factory _GetChatUsers() = _$GetChatUsersImpl;
}

/// @nodoc
abstract class _$$GetAllMessagesImplCopyWith<$Res> {
  factory _$$GetAllMessagesImplCopyWith(_$GetAllMessagesImpl value,
          $Res Function(_$GetAllMessagesImpl) then) =
      __$$GetAllMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? chatId});
}

/// @nodoc
class __$$GetAllMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetAllMessagesImpl>
    implements _$$GetAllMessagesImplCopyWith<$Res> {
  __$$GetAllMessagesImplCopyWithImpl(
      _$GetAllMessagesImpl _value, $Res Function(_$GetAllMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
  }) {
    return _then(_$GetAllMessagesImpl(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetAllMessagesImpl implements _GetAllMessages {
  _$GetAllMessagesImpl({required this.chatId});

  @override
  final String? chatId;

  @override
  String toString() {
    return 'ChatEvent.getAllMessages(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllMessagesImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllMessagesImplCopyWith<_$GetAllMessagesImpl> get copyWith =>
      __$$GetAllMessagesImplCopyWithImpl<_$GetAllMessagesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChatUsers,
    required TResult Function(String? chatId) getAllMessages,
  }) {
    return getAllMessages(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChatUsers,
    TResult? Function(String? chatId)? getAllMessages,
  }) {
    return getAllMessages?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChatUsers,
    TResult Function(String? chatId)? getAllMessages,
    required TResult orElse(),
  }) {
    if (getAllMessages != null) {
      return getAllMessages(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatUsers value) getChatUsers,
    required TResult Function(_GetAllMessages value) getAllMessages,
  }) {
    return getAllMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatUsers value)? getChatUsers,
    TResult? Function(_GetAllMessages value)? getAllMessages,
  }) {
    return getAllMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatUsers value)? getChatUsers,
    TResult Function(_GetAllMessages value)? getAllMessages,
    required TResult orElse(),
  }) {
    if (getAllMessages != null) {
      return getAllMessages(this);
    }
    return orElse();
  }
}

abstract class _GetAllMessages implements ChatEvent {
  factory _GetAllMessages({required final String? chatId}) =
      _$GetAllMessagesImpl;

  String? get chatId;
  @JsonKey(ignore: true)
  _$$GetAllMessagesImplCopyWith<_$GetAllMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  bool get chatUserisLoading => throw _privateConstructorUsedError;
  bool get chatUserHasError => throw _privateConstructorUsedError;
  bool get msgisLoading => throw _privateConstructorUsedError;
  bool get msgHasEroor => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ChatUsersModel? get chatUsersModel => throw _privateConstructorUsedError;
  GetMessages? get getMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {bool chatUserisLoading,
      bool chatUserHasError,
      bool msgisLoading,
      bool msgHasEroor,
      String? message,
      ChatUsersModel? chatUsersModel,
      GetMessages? getMessages});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatUserisLoading = null,
    Object? chatUserHasError = null,
    Object? msgisLoading = null,
    Object? msgHasEroor = null,
    Object? message = freezed,
    Object? chatUsersModel = freezed,
    Object? getMessages = freezed,
  }) {
    return _then(_value.copyWith(
      chatUserisLoading: null == chatUserisLoading
          ? _value.chatUserisLoading
          : chatUserisLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      chatUserHasError: null == chatUserHasError
          ? _value.chatUserHasError
          : chatUserHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      msgisLoading: null == msgisLoading
          ? _value.msgisLoading
          : msgisLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      msgHasEroor: null == msgHasEroor
          ? _value.msgHasEroor
          : msgHasEroor // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      chatUsersModel: freezed == chatUsersModel
          ? _value.chatUsersModel
          : chatUsersModel // ignore: cast_nullable_to_non_nullable
              as ChatUsersModel?,
      getMessages: freezed == getMessages
          ? _value.getMessages
          : getMessages // ignore: cast_nullable_to_non_nullable
              as GetMessages?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool chatUserisLoading,
      bool chatUserHasError,
      bool msgisLoading,
      bool msgHasEroor,
      String? message,
      ChatUsersModel? chatUsersModel,
      GetMessages? getMessages});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatUserisLoading = null,
    Object? chatUserHasError = null,
    Object? msgisLoading = null,
    Object? msgHasEroor = null,
    Object? message = freezed,
    Object? chatUsersModel = freezed,
    Object? getMessages = freezed,
  }) {
    return _then(_$InitialImpl(
      chatUserisLoading: null == chatUserisLoading
          ? _value.chatUserisLoading
          : chatUserisLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      chatUserHasError: null == chatUserHasError
          ? _value.chatUserHasError
          : chatUserHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      msgisLoading: null == msgisLoading
          ? _value.msgisLoading
          : msgisLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      msgHasEroor: null == msgHasEroor
          ? _value.msgHasEroor
          : msgHasEroor // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      chatUsersModel: freezed == chatUsersModel
          ? _value.chatUsersModel
          : chatUsersModel // ignore: cast_nullable_to_non_nullable
              as ChatUsersModel?,
      getMessages: freezed == getMessages
          ? _value.getMessages
          : getMessages // ignore: cast_nullable_to_non_nullable
              as GetMessages?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.chatUserisLoading,
      required this.chatUserHasError,
      required this.msgisLoading,
      required this.msgHasEroor,
      this.message,
      this.chatUsersModel,
      this.getMessages});

  @override
  final bool chatUserisLoading;
  @override
  final bool chatUserHasError;
  @override
  final bool msgisLoading;
  @override
  final bool msgHasEroor;
  @override
  final String? message;
  @override
  final ChatUsersModel? chatUsersModel;
  @override
  final GetMessages? getMessages;

  @override
  String toString() {
    return 'ChatState(chatUserisLoading: $chatUserisLoading, chatUserHasError: $chatUserHasError, msgisLoading: $msgisLoading, msgHasEroor: $msgHasEroor, message: $message, chatUsersModel: $chatUsersModel, getMessages: $getMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.chatUserisLoading, chatUserisLoading) ||
                other.chatUserisLoading == chatUserisLoading) &&
            (identical(other.chatUserHasError, chatUserHasError) ||
                other.chatUserHasError == chatUserHasError) &&
            (identical(other.msgisLoading, msgisLoading) ||
                other.msgisLoading == msgisLoading) &&
            (identical(other.msgHasEroor, msgHasEroor) ||
                other.msgHasEroor == msgHasEroor) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.chatUsersModel, chatUsersModel) ||
                other.chatUsersModel == chatUsersModel) &&
            (identical(other.getMessages, getMessages) ||
                other.getMessages == getMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatUserisLoading,
      chatUserHasError,
      msgisLoading,
      msgHasEroor,
      message,
      chatUsersModel,
      getMessages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ChatState {
  const factory _Initial(
      {required final bool chatUserisLoading,
      required final bool chatUserHasError,
      required final bool msgisLoading,
      required final bool msgHasEroor,
      final String? message,
      final ChatUsersModel? chatUsersModel,
      final GetMessages? getMessages}) = _$InitialImpl;

  @override
  bool get chatUserisLoading;
  @override
  bool get chatUserHasError;
  @override
  bool get msgisLoading;
  @override
  bool get msgHasEroor;
  @override
  String? get message;
  @override
  ChatUsersModel? get chatUsersModel;
  @override
  GetMessages? get getMessages;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
