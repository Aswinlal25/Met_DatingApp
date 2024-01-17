// import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/widgets/interst_container.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/widgets/photo_container.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:like_button/like_button.dart';

class OtherUsersScreen extends StatefulWidget {
  OtherUsersScreen({super.key});

  @override
  State<OtherUsersScreen> createState() => _OtherUsersScreenState();
}

class _OtherUsersScreenState extends State<OtherUsersScreen> {
  String image1 =
      'assets/users/photo_2023-11-30_12-08-50.jpg';
  String image2 = 'assets/users/photo_2023-11-30_14-06-05.jpg';
  String image3 = 'assets/users/photo_2023-11-30_14-06-23.jpg';
  String image4 = 'assets/users/photo_2023-11-30_14-06-26.jpg';

  int activeIndex = 0;

  static const IconData interests =
      IconData(0xf0523, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.back,
            color: kwhite,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 600,
                  child: CarouselSlider(
                      slideIndicator: CircularSlideIndicator(
                          indicatorBackgroundColor: Colors.white24,
                          indicatorRadius: 5,
                          padding: EdgeInsets.only(bottom: 30),
                          currentIndicatorColor: kred),
                      slideTransform: CubeTransform(),
                      unlimitedMode: true,
                      children: [
                        PhotoContainer(
                          image: image1,
                        ),
                        PhotoContainer(
                          image: image2,
                        ),
                        PhotoContainer(
                          image: image3,
                        ),
                        PhotoContainer(
                          image: image4,
                        ),
                      ]),
                ),
                Positioned(
                    top: 500,
                    left: 15,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text('Parvathy (24)',
                            style: TextStyle(
                                color: kwhite,
                                fontWeight: FontWeight.w500,
                                fontSize: 25)))),
                Positioned(
                    top: 500,
                    right: 20,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 44, 43, 43),
                            radius: 30,
                            child: LikeButton()))),
                //     Positioned(top: 15,left: 15,
                // child: GestureDetector(onTap: () {Navigator.pop(context);} ,
                //   child: CircleAvatar(backgroundColor: Colors.transparent,
                //     child: Icon(CupertinoIcons.back,color: kwhite,))))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 51, 51, 51),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.check_mark_circled_solid,
                                color: kwhite,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'About "',
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Hi! I'm parvathy, an adventurous soul who loves\nlaughterand good company. By day, I'm a Developer, but outside of work, you'll find me exploring new coffee spots,enjoying nature, or with my nose in a good book.",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 51, 51, 51),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.location_solid,
                                color: kwhite,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Location "',
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("Kochi , Kerala",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17))),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 51, 51, 51),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.calendar_today,
                                color: kwhite,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Bithday "',
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("25 September 1998",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 17)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 51, 51, 51),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Icon(
                                interests,
                                color: kwhite,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Interest"',
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          children: [
                            InterestsBoxs(
                              chipName: 'photography',
                            ),
                            InterestsBoxs(chipName: 'Cooking and Food'),
                            InterestsBoxs(chipName: 'Movies and TV shows'),
                            InterestsBoxs(chipName: 'Reading'),
                            InterestsBoxs(chipName: 'Pet'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 51, 51, 51),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                  child: Text('Block Parvathy',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17))),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 51, 51, 51),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                  child: Text('Report Parvathy',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 17))),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }


}
