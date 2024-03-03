import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/business_logic/Users/users_bloc.dart';
import 'package:dating_app/application/presentation/screens/edit_profile_screen/edited_profile.dart';
import 'package:dating_app/application/presentation/screens/settings/update_number.dart';
import 'package:dating_app/application/presentation/screens/settings/widgets/gender_page.dart';
import 'package:dating_app/application/presentation/screens/settings/widgets/range_slider.dart';
import 'package:dating_app/application/presentation/screens/settings/widgets/slider_setting.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/application/presentation/utils/dialog_box/account_delete.dart';
import 'package:dating_app/application/presentation/utils/dialog_box/custom_dialog.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:dating_app/domain/modules/profile/profile_details_model/user_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  final UserDetails? currentuser;
  const SettingsScreen({super.key, required this.currentuser});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Map<int, String> genderMap = {
    1: 'Male',
    2: 'Female',
    3: 'Others',
  };

  String getGenderString(int? genderValue) {
    return genderMap[genderValue ?? 2] ?? 'Female';
  }

  @override
  void initState() {
    context.read<UsersBloc>().add(UsersEvent.getprefrence());
    context.read<ProfileBloc>().add(ProfileEvent.getprofileDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(CupertinoIcons.back, color: kwhite)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<UsersBloc, UsersState>(builder: (context, state) {
          final prefrence = context.read<UsersBloc>().state.getUserPreference;
          if (prefrence != null && !state.prefrencedataisLoading) {
            return ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: kwhite,
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                      ),
                    ),
                    kheight15,
                    // Text(
                    //   'ProfilePicture settings',
                    //   style: TextStyle(
                    //       color: kwhite,
                    //       letterSpacing: 1,
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.w400),
                    // ),
                    kheight10,
                    Container(
                      decoration: BackgroundBoxStyle(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Text(
                              'Picture update',
                              style: TextStyle(
                                  color: kwhite,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: BlocBuilder<ProfileBloc, ProfileState>(
                              builder: (context, state) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                EditProfilePictureScreen()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            '${state.profileDetailsModel!.data!.image!.first}'),
                                        fit: BoxFit
                                            .cover, // Adjust this to change how the image fits inside the container
                                      ),
                                    ),
                                    width: 55,
                                    height: 55,
                                    // Remove the child property since the image is now set as the background
                                    // child: Image.network(
                                    //   'https://static.toiimg.com/thumb/msid-100277012,width-400,resizemode-4/100277012.jpg',
                                    // ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    kheight10,
                    Text(
                      'Account settings',
                      style: TextStyle(
                          color: kwhite,
                          letterSpacing: 1,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    kheight10,
                    Container(
                      decoration: BackgroundBoxStyle(),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.phone_solid,
                                      color: kwhite,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Phone Number',
                                      style: TextStyle(
                                          color: kwhite,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      '${widget.currentuser!.phNo}',
                                      style: TextStyle(
                                          color: fkwhite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.check, color: kred, size: 20),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        'You can change your phone number. The newly updated number will become the registered phone number, and you can only use this number for login purposes.',
                        style: TextStyle(
                            color: fkwhite,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                            fontSize: 13),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    NumberEditScreen()));
                      },
                      child: Container(
                        decoration: BackgroundBoxStyle(),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Update your phone number',
                                style: TextStyle(
                                    color: kred,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    kheight20,
                    Text(
                      'Prefrence settings',
                      style: TextStyle(
                          color: kwhite,
                          letterSpacing: 1,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    kheight15,
                    Text(
                      'Customize your preferences from distance and age range to gender. Choose wisely now, or adjust anytime for the best matches. Your journey, your choices!',
                      style: TextStyle(
                          color: fkwhite,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          fontSize: 13),
                    ),
                    kheight10,
                    CustomSlider2(
                      min: 0,
                      max: 50,
                      initialValue: prefrence.data!.maxDistance ?? 15,
                      onChanged: (value) {},
                    ),
                    kheight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    GenderSelectionPage()));
                      },
                      child: Container(
                        decoration: BackgroundBoxStyle(),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Show me',
                                style: TextStyle(
                                    letterSpacing: 0.6,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              kheight20,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    getGenderString(prefrence.data!.gender),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    width: 230,
                                  ),
                                  Icon(
                                    CupertinoIcons.forward,
                                    color: fkwhite,
                                  )
                                ],
                              ),
                              kheight10
                            ],
                          ),
                        ),
                      ),
                    ),
                    kheight20,
                    RangeSlider2(
                      onChanged: (value) {},
                      min: 0,
                      max: 50,
                      startValue: prefrence.data!.minAge!.toDouble(),
                      endValue: prefrence.data!.maxAge!.toDouble(),
                    ),
                    kheight80,
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context, builder: (_) => CustomDialog());
                      },
                      child: Container(
                        decoration: BackgroundBoxStyle(),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                  letterSpacing: 0.6,
                                  color: kred,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    kheight15,
                    InkWell(
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (_) => AccountDeleteDialog());
                        },
                        child: Container(
                          decoration: BackgroundBoxStyle(),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Center(
                              child: Text(
                                'Delete Account',
                                style: TextStyle(
                                    letterSpacing: 0.6,
                                    color: const Color.fromARGB(
                                        169, 255, 255, 255),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    kheight50
                  ],
                ),
              ],
            );
          } else {
            return LoadingAnimation(width: 20);
          }
        }),
      ),
    );
  }
}
