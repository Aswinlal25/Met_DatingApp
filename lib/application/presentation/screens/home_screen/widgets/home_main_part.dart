import 'package:dating_app/application/presentation/screens/home_screen/widgets/home_other_users.dart';
import 'package:dating_app/application/presentation/screens/home_screen/widgets/like_buttom.dart';
import 'package:dating_app/application/presentation/screens/home_screen/widgets/like_button2.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/domain/modules/home_response/datum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeContents extends StatelessWidget {
  const HomeContents({
    super.key,
    required this.image,
    required this.name,
    required this.age,
    required this.users,
    required this.city,
    required this.country,
    required this.bio,
    required this.id,
  });

  final List<String>? image;
  final String name;
  final Object age;
  final Datum users;
  final String city;
  final String country;
  final String bio;
  final int? id;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image?.isNotEmpty == true
                      ? image![0]
                      : 'https://i.pinimg.com/564x/81/8a/1b/818a1b89a57c2ee0fb7619b95e11aebd.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.infinity,
                height: screenSize.height * 0.7,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black.withOpacity(0.1),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 125,
              left: 25,
              child: Text(
                '$name ($age)',
                style: TextStyle(
                  color: kwhite,
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                ),
              ),
            ),
            Positioned(
              bottom: 120,
              right: 30,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          HomeOtherUsers(homeuser: users),
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
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Icon(
                    CupertinoIcons.arrow_up,
                    size: 30,
                    color: kwhite,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 105,
              left: 23,
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    color: kwhite,
                    size: 17,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '$city , $country',
                    style: TextStyle(
                      color: kwhite,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              left: 25,
              child: Container(
                width: 340,
                height: 60,
                child: Text(
                  "$bio",
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                ),
              ),
            )
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
                  iconColor: kgrey,
                ),
                HeartButton(
                  icon: CupertinoIcons.heart_fill,
                  iconColor: Colors.black,
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              right: 78,
              child: LikeButtonWithHeart(id: id),
            ),
          ],
        ),
      ],
    );
  }
}
