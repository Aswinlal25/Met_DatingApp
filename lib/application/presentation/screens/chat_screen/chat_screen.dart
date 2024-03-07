import 'package:dating_app/application/business_logic/Chat/chat_bloc.dart';
import 'package:dating_app/application/business_logic/Features/features_bloc.dart';
import 'package:dating_app/application/presentation/screens/chat_screen/widgets/match_profiles_view.dart';
import 'package:dating_app/application/presentation/screens/chat_screen/widgets/static.dart';
import 'package:dating_app/application/presentation/screens/chatting_screen/chatting_screen.dart';
import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/image_view_page.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // with SingleTickerProviderStateMixin {
  //late TabController _tabController;

  @override
  void initState() {
    super.initState();
    context.read<FeaturesBloc>().add(FeaturesEvent.getMatches());
    context.read<ChatBloc>().add(ChatEvent.getChatUsers());

    // _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          backgroundColor: Colors.black,
          flexibleSpace: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
                child: Text('Matches', style: TitleTextStyle()),
              ),
              BlocBuilder<FeaturesBloc, FeaturesState>(
                  builder: (context, state) {
                final matches = context
                    .read<FeaturesBloc>()
                    .state
                    .matchModel
                    ?.data
                    ?.matches;

                if (matches == null || matches.isEmpty) {
                  return Center(
                    child: Text(
                      '        No Matches',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, letterSpacing: 1),
                    ),
                  );
                } else {
                  return Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: matches.length,
                      itemBuilder: (context, index) {
                        List<String>? imageUrls =
                            matches[index].image?.split(',');

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => MatchUsersProfileView(
                                    matchUser: matches[index],
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 244, 67, 54),
                                        Color.fromARGB(21, 244, 67, 54),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 38,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  bottom: 8,
                                  left: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 36,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  bottom: 8,
                                  left: 5,
                                  child: CircleAvatar(
                                      radius: 33,
                                      backgroundImage: imageUrls?.isNotEmpty ==
                                              true
                                          ? NetworkImage(imageUrls!.first)
                                          : NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc0V1a7P8AYy3QBSO1AgldcqV9H37AtK3_aQ&usqp=CAU')
                                              as ImageProvider<Object>?),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }
              }),
            ],
          ),
        ),
      ),
      body: BlocConsumer<ChatBloc, ChatState>(
        listener: (context, state) {
          if (state.chatUserisLoading) {
            LoadingAnimation(width: 20);
          }
        },
        builder: (context, state) {
          final chatUsers = state.chatUsersModel?.data;
          if (chatUsers == null || chatUsers.isEmpty) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'No Chats Available',
                    style: TextStyle(color: kwhite, letterSpacing: 1),
                  ),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Text(
                  "Messages",
                  style: chatHeaderText(),
                ),
                Container(
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: chatUsers.length,
                      itemBuilder: (context, index) {
                        final chatuser = state.chatUsersModel!.data![index];
                        final timestamp =
                            chatUsers[index].chat?.lastMessageTime;
                        final formattedtime =
                            getFormattedTime(timestamp.toString());
                        state.chatUsersModel!.data![index].chat!.id;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              context.read<ChatBloc>().add(
                                  ChatEvent.getAllMessages(
                                      chatId: state.chatUsersModel!.data![index]
                                          .chat!.id));
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ChattingScreen(
                                          chatUsersModel: chatuser,
                                        )));
                          },
                          child: ListTile(
                            leading: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => ImageViewScreen(
                                              picture:
                                                  chatUsers[index].user?.image,
                                            )));
                              },
                              child: CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(255, 40, 40, 40),
                                radius: 28,
                                child: ClipOval(
                                  child: FadeInImage(
                                    placeholder: AssetImage(
                                        'assets/images/palce_holder_images/PlaceHolder.jpg'),
                                    image: chatUsers[index].user?.image != null
                                        ? NetworkImage(
                                            chatUsers[index].user?.image ?? '')
                                        : AssetImage(
                                                'assets/images/palce_holder_images/PlaceHolder.jpg')
                                            as ImageProvider,
                                    fit: BoxFit.cover,
                                    width: 160,
                                    height: 160,
                                  ),
                                ),
                              ),
                            ),
                            title: Text(
                              chatUsers[index].user?.name ?? '',
                              style: chatTitleStyle(),
                            ),
                            subtitle: Text(
                              chatUsers[index].chat?.lastMessage ?? '',
                              style: subtitileStyle(),
                            ),
                            trailing: Text(
                              formattedtime,
                              style: subtitileStyle(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

// bottom: TabBar(
//   indicator: UnderlineTabIndicator(
//       insets: EdgeInsets.only(
//         left: 20,
//         right: 20,
//       ),
//       borderSide: BorderSide(color: Colors.red, width: 2)),
//   // BoxDecoration(shape: BoxShape.rectangle,color: Color.fromARGB(255, 58, 58, 58),borderRadius: BorderRadius.circular(20)),
//   controller: _tabController,
//   tabs: [
//     Tab(text: 'Messages'),
//     //Tab(text: 'Calls'),
//   ],
// ),
