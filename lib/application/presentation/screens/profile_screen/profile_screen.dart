// ignore_for_file: must_be_immutable
import 'package:dating_app/application/business_logic/Features/features_bloc.dart';
import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/common_widgets/drawer.dart';
import 'package:dating_app/application/presentation/screens/edit_profile_screen/edit_interest.dart';
import 'package:dating_app/application/presentation/screens/edit_profile_screen/edited_profile.dart';
import 'package:dating_app/application/presentation/screens/profile_screen/widgets/user_details_view.dart';
import 'package:dating_app/application/presentation/screens/settings/settings_screen.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/domain/modules/profile/profile_details_model/profile_details_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileDetailsModel profileDetailsModel = ProfileDetailsModel();

  @override
  void initState() {
    super.initState();
    // Dispatch the _GetprofileDetails event when the screen is initialized
    context.read<ProfileBloc>().add(ProfileEvent.getprofileDetails());
    context.read<FeaturesBloc>().add(FeaturesEvent.getLikes());
  }

  static const IconData edit_sharp =
      IconData(0xe91c, fontFamily: 'MaterialIcons');

  // final Uri _url = Uri.parse('https://pub.dev/packages/url_launcher');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              //color: Color.fromARGB(255, 244, 67, 54),
                              gradient: LinearGradient(
                                colors: [
                                  const Color.fromARGB(255, 244, 67, 54),
                                  Color.fromARGB(90, 244, 67, 54),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors
                                  .transparent, // Make the CircleAvatar transparent
                              radius: 88,
                              // Add child or background image if needed
                            ),
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.black,

                                radius: 85,
                                // Add child or background image if needed
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 6,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 40, 40, 40),
                              radius: 82,
                              child: ClipOval(
                                child: FadeInImage(
                                  placeholder: AssetImage(
                                      'assets/images/palce_holder_images/PlaceHolder.jpg'),
                                  image: state.profileDetailsModel != null &&
                                          state.profileDetailsModel!.data!
                                              .image!.isNotEmpty
                                      ? NetworkImage(state.profileDetailsModel!
                                          .data!.image!.first)
                                      : AssetImage(
                                              'assets/images/palce_holder_images/PlaceHolder.jpg')
                                          as ImageProvider,
                                  fit: BoxFit.cover,
                                  width: 160,
                                  height: 160,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              right: 15,
                              bottom: 8,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              EditProfilePictureScreen()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: kred,
                                        width: 1), // Adjust width as needed
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: kblack,
                                    radius: 17,
                                    child: Icon(
                                      edit_sharp,
                                      color: kgrey,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.checkmark_seal_fill,
                            color: kwhite,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            state.profileDetailsModel != null
                                ? "${state.profileDetailsModel!.data!.userDetails!.name!} , ${state.profileDetailsModel!.data!.userDetails!.age}"
                                : 'User',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                letterSpacing: 1),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => UserDetailsScreen())).then((value) {
                      if (value == true) {
                        context
                            .read<ProfileBloc>()
                            .add(ProfileEvent.getprofileDetails());
                      }
                    });
                  },
                  child: ListTile(
                    title: Text(
                      'Profile View',
                      style: TextStyle(
                          fontSize: 15.5,
                          color: kwhite,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing:
                        Icon(CupertinoIcons.forward, color: fkwhite, size: 20),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.editProfileScreen)
                        .then((value) {
                      if (value == true) {
                        context
                            .read<ProfileBloc>()
                            .add(ProfileEvent.getprofileDetails());
                      }
                    });
                  },
                  child: ListTile(
                    title: Text(
                      'Edit Profile',
                      style: TextStyle(
                          color: kwhite,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing:
                        Icon(CupertinoIcons.forward, color: fkwhite, size: 20),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Your interest mapping
                    Map<String, int> interestMapping = {
                      'reading': 1,
                      'art and creativity': 2,
                      'fitness and exercise': 3,
                      'music': 4,
                      'pets': 5,
                      'movies and tv shows': 6,
                      'travel': 7,
                      'dance': 8,
                      'gardening': 9,
                      'cooking and food': 10,
                      'photography': 11,
                      'technology': 12,
                      'games': 13,
                    };

// Convert interests from string to int based on the mapping
                    List<int> convertedInterests = state
                            .profileDetailsModel!.data!.interests
                            ?.map((interest) =>
                                interestMapping[interest.toLowerCase()] ??
                                0) // Use 0 as default value if interest not found
                            .toList() ??
                        [];

// Navigate to EditInterestScreen with converted interests
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditInterestScreen(
                          initialInterests: convertedInterests,
                        ),
                      ),
                    ).then((value) {
                      if (value == true) {
                        context
                            .read<ProfileBloc>()
                            .add(ProfileEvent.getprofileDetails());
                      }
                    });

                    print(state.profileDetailsModel!.data!.interests);
                  },
                  child: ListTile(
                    title: Text(
                      'Edit interest',
                      style: TextStyle(
                          color: kwhite,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing:
                        Icon(CupertinoIcons.forward, color: fkwhite, size: 20),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.prederenceScreen);
                  },
                  child: ListTile(
                    title: Text(
                      'Preference',
                      style: TextStyle(
                          color: kwhite,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing:
                        Icon(CupertinoIcons.forward, color: fkwhite, size: 20),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsScreen(
                                  currentuser: state
                                      .profileDetailsModel!.data!.userDetails,
                                )));
                  },
                  child: ListTile(
                    title: Text(
                      'Settings',
                      style: TextStyle(
                          color: kwhite,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing:
                        Icon(CupertinoIcons.forward, color: fkwhite, size: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: BlocBuilder<FeaturesBloc, FeaturesState>(
                    builder: (context, state) {
                      // bool? isSubscribed = context
                      //     .read<FeaturesBloc>()
                      //     .state
                      //     .getLikes!
                      //     .data!
                      //     .isSubscribed;
                      final likesData = state.getLikes?.data;
                      if (likesData != null) {
                        bool? isSubscribed = likesData.isSubscribed;
                        return Container(
                          height: 112,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(80, 59, 59, 59),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 13, horizontal: 15),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        LogoContainer(),
                                        SizedBox(width: 2),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, left: 10),
                                          child: CardButton(),
                                        ),
                                      ],
                                    ),
                                    isSubscribed != null && isSubscribed
                                        ? Text(
                                            'Go to see your current subscription plan ',
                                            style: TextStyle(
                                              color: kwhite,
                                              letterSpacing: 0,
                                              fontSize: 12,
                                            ),
                                          )
                                        : Text(
                                            'Go Premium to instantly discover your matches',
                                            style: TextStyle(
                                              color: kwhite,
                                              letterSpacing: 0,
                                              fontSize: 12,
                                            ),
                                          ),
                                  ],
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Container(
                          height: 112,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(80, 59, 59, 59),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 13, horizontal: 15),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        LogoContainer(),
                                        SizedBox(width: 2),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, left: 10),
                                          child: CardButton(),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Go Premium to instantly discover your matches',
                                      style: TextStyle(
                                        color: kwhite,
                                        letterSpacing: 0,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ); // Placeholder for when data is loading or null
                      }
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Container LogoContainer() {
    return Container(
      width: 80,
      height: 55,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:
              AssetImage('assets/icons/Met_logo_black1-removebg-preview.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
