// import 'package:dating_app/application/presentation/routes/routes.dart';
// ignore_for_file: unnecessary_null_comparison

import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/widgets/interst_container.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/widgets/photo_container.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class UserDetailsScreen extends StatefulWidget {
  UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _OtherUsersScreenState();
}

class _OtherUsersScreenState extends State<UserDetailsScreen> {
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
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            final currentUser = state.profileDetailsModel!.data;
            return ListView(
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
                          children: (currentUser!.image ?? []).map((image) {
                            return image == null ||
                                    context
                                        .read<ProfileBloc>()
                                        .state
                                        .userdataisLoading
                                ? LoadingAnimation(width: 20)
                                : PhotoContainer(
                                    image: image); // Custom placeholder widget
                          }).toList(),
                        )),
                    Positioned(
                        top: 500,
                        left: 15,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                                '${currentUser.userDetails!.name} (${currentUser.userDetails!.age})',
                                style: TextStyle(
                                    color: kwhite,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25)))),
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
                          Text(currentUser.userDetails!.bio!,
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
                              child: Text(
                                  '${currentUser.userDetails!.city!} , ${currentUser.userDetails!.country}',
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
                            child: Text("${currentUser.userDetails!.dob}",
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
                              children: state.profileDetailsModel?.data
                                          ?.interests !=
                                      null
                                  ? List.generate(
                                      state.profileDetailsModel!.data!
                                          .interests!.length,
                                      (index) {
                                        String? chipName = state
                                            .profileDetailsModel!
                                            .data!
                                            .interests![index];
                                        return chipName != null
                                            ? InterestsBoxs(chipName: chipName)
                                            : SizedBox();
                                      },
                                    )
                                  : [],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
