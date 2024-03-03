// // ignore_for_file: must_be_immutable, unnecessary_null_comparison
// import 'dart:convert';

// import 'package:dating_app/application/business_logic/Chat/chat_bloc.dart';
// import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
// import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/custum_appbar.dart';
// import 'package:dating_app/application/presentation/utils/colors.dart';
// // Importing LoadingAnimation2 from its new location
// import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading2.dart';
// import 'package:dating_app/data/services/chat/chat.dart';
// import 'package:dating_app/data/shared_preferences/shered_preference.dart';
// import 'package:dating_app/domain/modules/chat/chat_users_model/datum.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:web_socket_channel/io.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';

// class ChattingScreen extends StatefulWidget {
//   final Datum? chatUsersModel;

//   ChattingScreen({
//     Key? key,
//     required this.chatUsersModel,
//   });

//   @override
//   State<ChattingScreen> createState() => ChattingScreenState();
// }

// class ChattingScreenState extends State<ChattingScreen> {
//   TextEditingController msgController = TextEditingController();
//   ScrollController _scrollController = ScrollController();

//   @override
//   void initState() {
//     context
//         .read<ChatBloc>()
//         .add(ChatEvent.getAllMessages(chatId: widget.chatUsersModel?.chat?.id));
//     context.read<ProfileBloc>().add(ProfileEvent.getprofileDetails());
//     super.initState();
//     connectWebSocket();
//     print("-----------chatid----${widget.chatUsersModel?.chat?.id}");
//     _scrollController = ScrollController();
//   }

//   static const IconData send =
//       IconData(0xe571, fontFamily: 'MaterialIcons', matchTextDirection: true);
//   late WebSocketChannel? channel;
//   List<String?> messagess = [];
//   ChatApi chatApi = ChatApi();
//   int? i;
//   // Inside ChattingScreenState class

//   void connectWebSocket() async {
//     try {
//       final token = await SharedPref.getToken();
//       final accessToken = token.accessToken;
//       final refreshToken = token.refreshToken;

//       final cookies = {
//         'Cookie': 'accessToken=$accessToken; refreshToken=$refreshToken',
//       };

//       final wsUrl =
//           'ws://13.127.28.68:3001/ws/${widget.chatUsersModel?.chat?.id}';
//       channel = IOWebSocketChannel.connect(wsUrl, headers: cookies);

//       channel?.stream.listen((message) {
//         print('Received message from WebSocket: $message');

//         if (message is String && message.isNotEmpty) {
//           try {
//             // Message newMessage = Message.fromJson(jsonDecode(message));

//             setState(() {
//               messagess.add(message);
//             });
//           } catch (e) {
//             print('Error parsing message: $e');
//           }
//         } else {
//           print('Invalid message format: $message');
//         }
//       });

//       print('WebSocket connected successfully');
//     } catch (error) {
//       print('Error connecting to WebSocket: $error');
//     }
//   }

//   void sendMessage(String messageContent) {
//     if (channel != null && channel!.sink != null) {
//       // Send the message content as is, without encoding into JSON format
//       channel!.sink.add(messageContent);
//     } else {
//       print('WebSocket channel is not initialized');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(
//       const SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent,
//       ),
//     );

//     return Scaffold(
//       backgroundColor: kblack,
//       appBar: AppBar(
//         backgroundColor: kblack,
//         automaticallyImplyLeading: false,
//         toolbarHeight: 62.5,
//         flexibleSpace: CustomAppBar(chatUsersModel: widget.chatUsersModel),
//       ),
//       body: Container(
//           height: MediaQuery.of(context).size.height,
//           width: double.infinity,
//           child: BlocConsumer<ChatBloc, ChatState>(
//               listener: (context, state) {},
//               builder: (context, state) {
//                 final curentUser = context
//                         .read<ProfileBloc>()
//                         .state
//                         .profileDetailsModel!
//                         .data!
//                         .userDetails!
//                         .id ??
//                     [];

//                 final messages = state.getMessages?.data;

//                 final chatId = widget.chatUsersModel?.chat?.id;
//                 if (chatId == null && messages == null || state.msgisLoading) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [LoadingAnimation2(width: 20)],
//                   );
//                 } else {
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Expanded(
//                         child: ListView.builder(
//                           reverse: true,
//                           controller: _scrollController,
//                           itemCount: messages == null ? 1 : messages.length,
//                           itemBuilder: (context, index) {
//                             int reversedIndex = messages!.length - index - 1;

//                             if (messages == null) {
//                               return Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     'Say hai 👋',
//                                     style:
//                                         TextStyle(color: kwhite, fontSize: 18),
//                                   )
//                                 ],
//                               );
//                             }
//                             return Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 crossAxisAlignment: curentUser ==
//                                         messages[reversedIndex].senderId
//                                     ? CrossAxisAlignment.end
//                                     : CrossAxisAlignment.start,
//                                 children: [
//                                   InkWell(
//                                     onDoubleTap: () {},
//                                     child: Container(
//                                       // Your content here

//                                       child: Column(
//                                         crossAxisAlignment: curentUser ==
//                                                 messages[reversedIndex].senderId
//                                             ? CrossAxisAlignment.end
//                                             : CrossAxisAlignment.start,
//                                         children: [
//                                           Container(
//                                             decoration: BoxDecoration(
//                                               color: curentUser ==
//                                                       messages[reversedIndex]
//                                                           .senderId
//                                                   ? Colors.red
//                                                   : const Color.fromARGB(
//                                                       133, 51, 51, 51),
//                                               borderRadius: BorderRadius.all(
//                                                   Radius.circular(20)),
//                                             ),
//                                             child: Padding(
//                                               padding: const EdgeInsets.all(10),
//                                               child: Column(
//                                                 // crossAxisAlignment: curentUser ==
//                                                 //         messages[reversedIndex]
//                                                 //             .senderId
//                                                 //     ? CrossAxisAlignment.end
//                                                 //     : CrossAxisAlignment.start,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.end,
//                                                 children: [
//                                                   Text(
//                                                     messages[reversedIndex]
//                                                             .messageContent ??
//                                                         '',
//                                                     style: TextStyle(
//                                                         color: kwhite,
//                                                         fontSize: 16),
//                                                   ),
//                                                   SizedBox(
//                                                     height: 0,
//                                                   ),
//                                                   Row(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     children: [
//                                                       // Text(
//                                                       //   "${messages[index].timestamp?.hour.toString() ?? ''} : ${messages[index].timestamp?.minute.toString() ?? ''}",
//                                                       //   style: TextStyle(
//                                                       //       color: fkwhite,
//                                                       //       fontSize: 9),
//                                                       // ),
//                                                     ],
//                                                   )
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                           // Text(
//                                           //   "${messages[index].timestamp?.hour.toString() ?? ''} : ${messages[index].timestamp?.minute.toString() ?? ''}",
//                                           //   style: TextStyle(
//                                           //       color: fkwhite, fontSize: 10),
//                                           // ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             );
//                           },
//                           //  physics: const BouncingScrollPhysics(),
//                           padding: const EdgeInsets.all(10),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 10),
//                             Icon(
//                               Icons.emoji_emotions,
//                               color: Colors.white30,
//                             ),
//                             SizedBox(width: 10),
//                             Expanded(
//                               child: Container(
//                                 height: 50,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(25),
//                                   color: const Color.fromARGB(255, 39, 39, 39),
//                                 ),
//                                 child: Row(
//                                   children: [
//                                     SizedBox(width: 20),
//                                     Expanded(
//                                       child: TextField(
//                                         controller: msgController,
//                                         keyboardType: TextInputType.multiline,
//                                         maxLines: null,
//                                         style: TextStyle(color: Colors.white),
//                                         decoration: InputDecoration(
//                                           hintText: 'Message...',
//                                           hintStyle:
//                                               TextStyle(color: Colors.grey),
//                                           border: InputBorder.none,
//                                         ),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: GestureDetector(
//                                         onTap: () {
//                                           // Get the message from the text field
//                                           String messageContent =
//                                               msgController.text;
//                                           // Call the sendMessage method with the message content
//                                           sendMessage(messageContent);
//                                           if (channel != null &&
//                                               channel!.closeCode == null) {
//                                             print('ws is success');
//                                           } else {
//                                             print('ws is Failure');
//                                           }
//                                           msgController.text = '';
//                                           // context.read<ChatBloc>().add(
//                                           //     ChatEvent.getAllMessages(
//                                           //         chatId: widget
//                                           //             .chatUsersModel
//                                           //             .chat
//                                           //             ?.id));
//                                         },
//                                         child: Icon(
//                                           send,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(width: 10),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   );
//                 }
//               })),
//     );
//   }

//   @override
//   void dispose() {
//     // Close the WebSocket channel when the widget is disposed
//     if (channel != null) {
//       channel?.sink.close();
//     }
//     super.dispose();
//   }
// }
// ignore_for_file: must_be_immutable, unnecessary_null_comparison

import 'package:dating_app/application/business_logic/Chat/chat_bloc.dart';
import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/custum_appbar.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading2.dart';
import 'package:dating_app/data/services/chat/chat.dart';
import 'package:dating_app/data/shared_preferences/shered_preference.dart';
import 'package:dating_app/domain/modules/chat/chat_users_model/datum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

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

  @override
  void initState() {
    super.initState();
    context
        .read<ChatBloc>()
        .add(ChatEvent.getAllMessages(chatId: widget.chatUsersModel?.chat?.id));
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

    return Scaffold(
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
            if (messages == null || state.msgisLoading) {
              return Center(
                child: LoadingAnimation2(width: 20),
              );
            } else {
              if (chatId != null) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        reverse: true,
                        controller: _scrollController,
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          final reversedIndex = messages.length - index - 1;

                          final message = messages[reversedIndex];

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment:
                                  currentUser == message.senderId
                                      ? CrossAxisAlignment.end
                                      : CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onDoubleTap: () {},
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          currentUser == message.senderId
                                              ? CrossAxisAlignment.end
                                              : CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color:
                                                currentUser == message.senderId
                                                    ? Colors.red
                                                    : const Color.fromARGB(
                                                        133, 51, 51, 51),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  message.messageContent ?? '',
                                                  style: TextStyle(
                                                      color: kwhite,
                                                      fontSize: 16),
                                                ),
                                                SizedBox(height: 0),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
                          Icon(
                            Icons.emoji_emotions,
                            color: Colors.white30,
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
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: TextField(
                                      controller: msgController,
                                      keyboardType: TextInputType.multiline,
                                      maxLines: null,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        hintText: 'Message...',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                      ),
                                    ),
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
                                        context.read<ChatBloc>().add(
                                            ChatEvent.getAllMessages(
                                                chatId: widget
                                                    .chatUsersModel?.chat?.id));
                                      },
                                      child: Icon(
                                        Icons.send,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
            }
          },
        ),
      ),
    );
  }
}
