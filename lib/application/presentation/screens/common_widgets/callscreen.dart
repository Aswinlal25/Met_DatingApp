import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblack,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: kwhite,
            )),
      ),
      backgroundColor: kblack,
      body: Column(
        children: [
          kheight50,
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/users/photo_2023-11-30_14-06-05.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,

                        Colors.transparent,
                        Colors.transparent,
                        // Colors.black.withOpacity(0.7),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 150,
                    child: Column(
                      children: [
                        Text(
                          'Parvathy',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: kwhite),
                        ),
                        kheight10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.phone_fill,
                                size: 21, color: kwhite),
                            Text(
                              'Calling',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  color: kwhite),
                            ),
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleIconButton(
                  icon: CupertinoIcons.speaker_1_fill,
                  bckcolor: kblack,
                  Iconcolor: kwhite,
                  onPressed: () => print('Button 1')),
              CircleIconButton(
                  icon: Icons.videocam_off_rounded,
                  bckcolor: kblack,
                  Iconcolor: Colors.white54,
                  onPressed: () => print('Button 2')),
              CircleIconButton(
                  icon: CupertinoIcons.mic_slash_fill,
                  bckcolor: kblack,
                  Iconcolor: kwhite,
                  onPressed: () => print('Button 3')),
              CircleIconButton(
                  icon: CupertinoIcons.phone_fill,
                  bckcolor: kred,
                  Iconcolor: kwhite,
                  onPressed: () => Navigator.pop(context)),
            ],
          ),
        ],
      ),
    );
  }
}

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color bckcolor;
  final Color? Iconcolor;

  CircleIconButton(
      {required this.icon,
      required this.onPressed,
      required this.bckcolor,
      this.Iconcolor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90, // Adjust the width as needed
      height: 90, // Adjust the height as needed
      child: IconButton(
        onPressed: onPressed,
        icon: CircleAvatar(
          radius: 30,
          backgroundColor: bckcolor,
          // const Color.fromARGB(255, 47, 47, 47), // You can set your own color
          child: Icon(
            icon,
            color: Iconcolor,
            size: 25,
          ),
        ),
      ),
    );
  }
}
