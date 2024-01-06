import 'package:dating_app/application/presentation/screens/home_screen/widgets/like_buttom.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        // leading: Icon(CupertinoIcons.bars,color: kwhite,),
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            width: 10,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/menu (1).png'),
                fit:
                    BoxFit.contain, // Adjust the fit based on your requirements
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background_images/photo_2023-11-30_13-42-16.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black,
                Colors.transparent,
                Colors.transparent,

                // Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.1)
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HeartButton(icon: Icons.clear),
              HeartButton(icon: Icons.favorite_sharp),
              HeartButton(icon: CupertinoIcons.arrow_up_square_fill,),
            ],
          ),
        ],
      ),
    );
  }
}
