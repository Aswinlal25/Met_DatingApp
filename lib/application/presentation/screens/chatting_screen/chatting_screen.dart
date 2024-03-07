// ignore_for_file: must_be_immutable, unnecessary_null_comparison, deprecated_member_use

import 'dart:io';
import 'package:dating_app/application/business_logic/Chat/chat_bloc.dart';
import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/custum_appbar.dart';
import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/msg_box.dart';
import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/static.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
// import 'package:dating_app/application/presentation/utils/dialog_box/massagetime.dart';
// import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading2.dart';
import 'package:dating_app/data/services/chat/chat.dart';
import 'package:dating_app/data/shared_preferences/shered_preference.dart';
import 'package:dating_app/domain/modules/chat/chat_users_model/datum.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
//import 'package:flutter/foundation.dart' as foundation;

class ChattingScreen extends StatefulWidget {
  final Datum? chatUsersModel;

  ChattingScreen({
    Key? key,
    required this.chatUsersModel,
  });

  @override
  State<ChattingScreen> createState() => ChattingScreenState();
}

class ChattingScreenState extends State<ChattingScreen> {
  TextEditingController msgController = TextEditingController();
  ScrollController _scrollController = ScrollController();
  late WebSocketChannel? channel;
  List<String?> messagess = [];
  ChatApi chatApi = ChatApi();
  bool msgselected = false;
  bool _showEmoji = false;
  bool _apiCalled = false;

  @override
  void initState() {
    super.initState();
    if (!_apiCalled) {
      context.read<ChatBloc>().add(
          ChatEvent.getAllMessages(chatId: widget.chatUsersModel?.chat?.id));
    }
    context.read<ProfileBloc>().add(ProfileEvent.getprofileDetails());
    connectWebSocket();
    print("-----------chatid----${widget.chatUsersModel?.chat?.id}");
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    if (channel != null) {
      channel?.sink.close();
    }
    super.dispose();
  }

  void connectWebSocket() async {
    try {
      final token = await SharedPref.getToken();
      final accessToken = token.accessToken;
      final refreshToken = token.refreshToken;

      final cookies = {
        'Cookie': 'accessToken=$accessToken; refreshToken=$refreshToken',
      };

      final wsUrl =
          'ws://13.127.28.68:3001/ws/${widget.chatUsersModel?.chat?.id}';
      channel = IOWebSocketChannel.connect(wsUrl, headers: cookies);

      channel?.stream.listen((message) {
        print('Received message from WebSocket: $message');

        if (message is String && message.isNotEmpty) {
          try {
            setState(() {
              messagess.add(message);
            });
          } catch (e) {
            print('Error parsing message: $e');
          }
        } else {
          print('Invalid message format: $message');
        }
      });

      print('WebSocket connected successfully');
    } catch (error) {
      print('Error connecting to WebSocket: $error');
    }
  }

  void sendMessage(String messageContent) {
    if (channel != null && channel!.sink != null) {
      channel!.sink.add(messageContent);
    } else {
      print('WebSocket channel is not initialized');
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return WillPopScope(
      onWillPop: () {
        if (_showEmoji) {
          setState(() {
            _showEmoji = !_showEmoji;
          });
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: Scaffold(
        backgroundColor: kblack,
        appBar: AppBar(
          backgroundColor: kblack,
          automaticallyImplyLeading: false,
          toolbarHeight: 62.5,
          flexibleSpace: CustomAppBar(chatUsersModel: widget.chatUsersModel),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: BlocConsumer<ChatBloc, ChatState>(
            listener: (context, state) {},
            builder: (context, state) {
              final currentUser = context
                      .read<ProfileBloc>()
                      .state
                      .profileDetailsModel
                      ?.data
                      ?.userDetails
                      ?.id ??
                  '';

              final messages = state.getMessages?.data;

              final chatId = widget.chatUsersModel?.chat?.id;
              // if (messages == null || state.msgisLoading) {
              //   return Center(
              //     child: LoadingAnimation2(width: 20),
              //   );
              // } else
              // {
              if (chatId != null) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        reverse: true,
                        controller: _scrollController,
                        itemCount: messages?.length,
                        itemBuilder: (context, index) {
                          final reversedIndex = messages!.length - index - 1;
                          final massageContent =
                              messages[reversedIndex].messageContent;
                          // final message = messages[reversedIndex];
                          final hours =
                              messages[index].timestamp?.hour.toString() ?? '';
                          final mintes =
                              messages[index].timestamp?.minute.toString() ??
                                  '';
                          final senderid =
                              messages[reversedIndex].senderId ?? '';

                          return Padding(
                            padding: EdgeInsets.all(msgselected ? 3.0 : 8.0),
                            child: InkWell(
                              onDoubleTap: () {
                                setState(() {
                                  msgselected = !msgselected;
                                });
                              },
                              child: MassageBox(
                                  currentUser: currentUser,
                                  senderid: senderid,
                                  massageContent: massageContent,
                                  msgselected: msgselected,
                                  hours: hours,
                                  mintes: mintes),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              setState(() => _showEmoji = !_showEmoji);
                            },
                            child: Icon(
                              Icons.emoji_emotions,
                              color: Colors.white30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: const Color.fromARGB(255, 39, 39, 39),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: msgInputStyle(msgController),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        String messageContent =
                                            msgController.text;
                                        sendMessage(messageContent);
                                        if (channel != null &&
                                            channel!.closeCode == null) {
                                          print('WebSocket is successful');
                                        } else {
                                          print('WebSocket failed');
                                        }
                                        msgController.text = '';
                                        _apiCalled = true;
                                        if (_apiCalled = true) {
                                          context.read<ChatBloc>().add(
                                              ChatEvent.getAllMessages(
                                                  chatId: widget.chatUsersModel
                                                      ?.chat?.id));
                                        }
                                        context
                                            .read<ChatBloc>()
                                            .add(ChatEvent.getChatUsers());
                                      },
                                      child: Icon(
                                        Icons.send,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  kheight10,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (_showEmoji)
                      SizedBox(
                        height: 275,
                        child: EmojiPicker(
                          textEditingController: msgController,
                          config: Config(
                            bgColor: Colors.black,
                            columns: 7,
                            initCategory: Category.SMILEYS,
                            emojiSizeMax: 29 * (Platform.isIOS ? 1.30 : 1.0),
                          ),
                        ),
                      )
                  ],
                );
              } else {
                return Center(
                  child: Text(
                    'Chat ID is null',
                    style: TextStyle(color: Colors.red),
                  ),
                );
              }
              // }
            },
          ),
        ),
      ),
    );
  }
}
