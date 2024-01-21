import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 33,
                        backgroundImage: AssetImage(
                            'assets/users/photo_2023-11-30_12-08-50.jpg'),
                        //  backgroundColor: Colors.blue,
                      ),
                    );
                  },
                ),
              ),
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
