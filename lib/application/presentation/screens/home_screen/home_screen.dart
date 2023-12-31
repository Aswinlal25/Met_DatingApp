import 'package:dating_app/application/presentation/screens/home_screen/widgets/interestbutton.dart';
import 'package:dating_app/application/presentation/screens/home_screen/widgets/like_buttom.dart';
import 'package:dating_app/application/presentation/screens/home_screen/widgets/like_button2.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/other_users.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Column(
        children: [
          Stack(
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
                    Colors.black.withOpacity(0.1),
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                ),
              ),
              Positioned(
                  bottom: 125,
                  left: 25,
                  child: Text(
                    'Parvathy (24)',
                    style: TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 23),
                  )),
              Positioned(
                  bottom: 120,
                  right: 30,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  OtherUsersScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(0.0,
                                1.0); // Change the Y-axis value to start from the bottom
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));
                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.transparent),
                        child: Icon(
                          CupertinoIcons.arrow_up,
                          size: 30,
                          color: kwhite,
                        )),
                  )),
              Positioned(
                  bottom: 110,
                  left: 25,
                  child: Text(
                    'Kochi , Kerala',
                    style: TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                  )),
              Positioned(
                bottom: 20,
                left: 15,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InterestsBox(
                          chipName: 'photography',
                        ),
                        InterestsBox( chipName: 'Reading',),
                          InterestsBox( chipName: 'Cooking and Food',),
                      ],
                    ),
                    Row(
                      children: [
                        InterestsBox( chipName: 'Movies and TV shows',),
                        
                        InterestsBox( chipName: 'Pet',),
                      ],
                    ),
                  
                  ],
                ),
                //  Text(
                //   "Hi! I'm parvathy, an adventurous soul who loves laughter\nand good company. By day, I'm a Developer, but outside\nof work, you'll find me exploring new coffee spots,\nenjoying nature, or with my nose in a good book.",
                //   style: TextStyle(
                //       color: Colors.white70,
                //       fontWeight: FontWeight.w300,
                //       fontSize: 13),
                // )
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HeartButton(
                    icon: Icons.close,
                  ),
                  // LikeButtonWithHeart(),
                  HeartButton(),
                  // HeartButton(icon: CupertinoIcons.arrow_up_square_fill),
                ],
              ),
              Positioned(
                bottom: 10,
                right: 78,
                child: LikeButtonWithHeart(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
