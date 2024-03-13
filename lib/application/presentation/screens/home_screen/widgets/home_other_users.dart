// import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/widgets/interst_container.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/widgets/photo_container.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/dialog_box/report_dialog.dart';
import 'package:dating_app/application/presentation/utils/dialog_box/user_block_dialog.dart';
import 'package:dating_app/data/services/features/features.dart';
import 'package:dating_app/domain/modules/home_response/datum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
//import 'package:like_button/like_button.dart';

class HomeOtherUsers extends StatefulWidget {
  final Datum homeuser;
  HomeOtherUsers({super.key, required this.homeuser});

  @override
  State<HomeOtherUsers> createState() => _OtherUsersScreenState();
}

class _OtherUsersScreenState extends State<HomeOtherUsers> {
  List<String>? images = [];
  bool isLiked = false;
  int activeIndex = 0;
  @override
  void initState() {
    images = widget.homeuser.images;
    final dob = widget.homeuser.dob;
    print(dob);
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
                      currentIndicatorColor: kred,
                    ),
                    slideTransform: CubeTransform(),
                    unlimitedMode: true,
                    enableAutoSlider: true,
                    autoSliderTransitionTime: Duration(seconds: 2),
                    children: images!.map((image) {
                      return PhotoContainer(image: image);
                    }).toList(), // Convert the iterable to a list
                  ),
                ),
                Positioned(
                    top: 500,
                    left: 15,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                            '${widget.homeuser.name} (${widget.homeuser.age})',
                            style: TextStyle(
                                color: kwhite,
                                fontWeight: FontWeight.w500,
                                fontSize: 25)))),
                Positioned(
                    top: 500,
                    right: 20,
                    child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 44, 43, 43),
                        radius: 30,
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                isLiked = true;
                                FeaturesApi featuresApi = FeaturesApi();
                                featuresApi.postlike(widget.homeuser.id);
                              });
                            },
                            child: Icon(
                              Icons.favorite,
                              color: isLiked ? kred : kgrey,
                            )
                            // LikeButton()
                            ))),
              ],
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
                    Text("${widget.homeuser.bio}",
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
                            "${widget.homeuser.city} , ${widget.homeuser.country}",
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
                      child: Text("${widget.homeuser.dob}",
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
                padding: const EdgeInsets.all(20),
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
                            widget.homeuser.interests!.length,
                            (index) => InterestsBoxs(
                                chipName: widget.homeuser.interests![index]),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return BlockDialog(
                      id: widget.homeuser.id,
                    );
                  },
                );
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Color.fromARGB(133, 51, 51, 51),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                    child: Text('Block  ${widget.homeuser.name}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 17))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ReportDialog(
                        id: widget.homeuser.id,
                      );
                    });
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Color.fromARGB(133, 51, 51, 51),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                    child: Text('Report ${widget.homeuser.name}',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w500,
                            fontSize: 17))),
              ),
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
