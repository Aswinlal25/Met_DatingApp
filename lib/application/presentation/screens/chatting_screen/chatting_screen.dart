import 'dart:ui';
import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/custum_appbar.dart';
import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/input_field.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  static const IconData send =
      IconData(0xe571, fontFamily: 'MaterialIcons', matchTextDirection: true);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        automaticallyImplyLeading: false,
        toolbarHeight: 62.5,
        flexibleSpace: CustomAppBar(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/users/photo_2023-11-30_14-06-05.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.black.withOpacity(0.7),
                Colors.transparent,
                Colors.black,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: SingleChildScrollView(
                // reverse: true,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SizedBox(height: 660),
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
                            InputField(send: send),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
