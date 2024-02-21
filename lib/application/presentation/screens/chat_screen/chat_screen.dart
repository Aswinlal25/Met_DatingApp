import 'package:dating_app/application/business_logic/Features/features_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/chat_screen/widgets/match_profiles_view.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    context.read<FeaturesBloc>().add(FeaturesEvent.getMatches());
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: AppBar(
          backgroundColor: Colors.black,
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
                insets: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                borderSide: BorderSide(color: Colors.red, width: 2)),
            // BoxDecoration(shape: BoxShape.rectangle,color: Color.fromARGB(255, 58, 58, 58),borderRadius: BorderRadius.circular(20)),
            controller: _tabController,
            tabs: [
              Tab(text: 'Messages'),
              Tab(text: 'Calls'),
            ],
          ),
          flexibleSpace: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Matches',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ),
              BlocBuilder<FeaturesBloc, FeaturesState>(
                  builder: (context, state) {
                final matches = context
                    .read<FeaturesBloc>()
                    .state
                    .matchModel!
                    .data!
                    .matches;

                if (matches == null) {
                  return Text(
                    'No Matches',
                    style: FormTxtStyle(),
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
                                          )));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    //color: Color.fromARGB(255, 244, 67, 54),
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
                                    backgroundColor: Colors
                                        .transparent, // Make the CircleAvatar transparent
                                    radius: 38,
                                    // Add child or background image if needed
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
                                      // Add child or background image if needed
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  bottom: 8,
                                  left: 5,
                                  child: CircleAvatar(
                                    radius: 33,
                                    backgroundImage: NetworkImage(imageUrls
                                            ?.first ??
                                        'assets/images/palce_holder_images/PlaceHolder.jpg'),
                                    //  backgroundColor: Colors.blue,
                                  ),
                                ),
                                Positioned(
                                    top: 50,
                                    bottom: 0,
                                    left: 50,
                                    child: Icon(
                                      Icons.favorite_rounded,
                                      color: const Color.fromARGB(
                                          255, 244, 67, 54),
                                    )),
                              ],
                            ),
                            // CircleAvatar(
                            //   radius: 35,
                            //   backgroundImage: NetworkImage(imageUrls?.first ??
                            //       'assets/images/palce_holder_images/PlaceHolder.jpg'),
                            //   //  backgroundColor: Colors.blue,
                            // ),
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
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.chattingScreen);
                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage(
                        'assets/users/photo_2023-11-30_14-06-05.jpg'),
                    //  backgroundColor: Colors.blue,
                  ),
                  title: Text(
                    'Mariam',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                  subtitle: Text(
                    'Helloo',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                  trailing: Text(
                    'Now',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              );
            },
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                  leading: CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage(
                        'assets/users/photo_2023-11-30_14-06-26.jpg'),
                    //  backgroundColor: Colors.blue,
                  ),
                  title: Text(
                    'Mariam',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        CupertinoIcons.arrow_up_right,
                        color: Colors.green,
                      ),
                      Text(
                        'Today 10:30',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    CupertinoIcons.phone_fill,
                    color: Colors.white60,
                  ));
            },
          ),
        ],
      ),
    );
  }
}
