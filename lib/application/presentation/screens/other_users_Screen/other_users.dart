// import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/widgets/interst_container.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/widgets/photo_container.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/dialog_box/report_dialog.dart';
import 'package:dating_app/application/presentation/utils/dialog_box/user_block_dialog.dart';
import 'package:dating_app/domain/modules/recommented_model/datum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:like_button/like_button.dart';

class OtherUsersScreen extends StatefulWidget {
  final Datum user;
  OtherUsersScreen({super.key, required this.user});

  @override
  State<OtherUsersScreen> createState() => _OtherUsersScreenState();
}

class _OtherUsersScreenState extends State<OtherUsersScreen> {
  List<String>? images = [];

  int activeIndex = 0;
  @override
  void initState() {
    images = widget.user.images;
    super.initState();
  }

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
        // title: Text('${widget.user.name} (${widget.user.age})',
        //     style: TextStyle(
        //         color: kwhite, fontWeight: FontWeight.w500, fontSize: 21)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  height: 600,
                  child: Stack(
                    children: [
                      CarouselSlider(
                        slideIndicator: CircularSlideIndicator(
                          indicatorBackgroundColor: Colors.white24,
                          indicatorRadius: 5,
                          padding: EdgeInsets.only(bottom: 30),
                          currentIndicatorColor: kred,
                        ),
                        slideTransform: CubeTransform(),
                        unlimitedMode: true,
                        enableAutoSlider: true,
                        children: images!.map((image) {
                          return PhotoContainer(image: image);
                        }).toList(), // Convert the iterable to a list
                      ),
                      Positioned(
                          top: 500,
                          left: 15,
                          child: Text(
                              '${widget.user.name} (${widget.user.age})',
                              style: TextStyle(
                                  color: kwhite,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25))),
                      Positioned(
                          top: 490,
                          right: 20,
                          child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 44, 43, 43),
                                  radius: 30,
                                  child: LikeButton()))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(133, 51, 51, 51),
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
                        Text("${widget.user.bio}",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 15)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(133, 51, 51, 51),
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
                            child: Text(
                                "${widget.user.city} , ${widget.user.country}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17))),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(133, 51, 51, 51),
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
                          child: Text("${widget.user.dob}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17)),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(133, 51, 51, 51),
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
                            children: List.generate(
                              widget.user.interests!.length,
                              (index) => InterestsBoxs(
                                  chipName: widget.user.interests![index]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(133, 51, 51, 51),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                      child: InkWell(
                    onTap: () {
                      //BlockDialog();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return BlockDialog(
                            id: widget.user.id,
                          );
                        },
                      );
                    },
                    child: Text('Block  ${widget.user.name}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17)),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(133, 51, 51, 51),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                      child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ReportDialog(
                              id: widget.user.id,
                            );
                          });
                    },
                    child: Text('Report  ${widget.user.name}',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w500,
                            fontSize: 17)),
                  )),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
