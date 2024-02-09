// ignore_for_file: must_be_immutable
import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/common_widgets/drawer.dart';
import 'package:dating_app/application/presentation/screens/edit_profile_screen/edited_profile.dart';
import 'package:dating_app/application/presentation/screens/profile_screen/widgets/user_details_view.dart';
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
  }

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
                                  placeholder: NetworkImage(
                                      'https://i.pinimg.com/564x/81/8a/1b/818a1b89a57c2ee0fb7619b95e11aebd.jpg'),
                                  image: NetworkImage(
                                    state.profileDetailsModel != null
                                        ? state.profileDetailsModel!.data!
                                            .image!.first
                                        : 'https://i.pinimg.com/564x/81/8a/1b/818a1b89a57c2ee0fb7619b95e11aebd.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                  width: 160,
                                  height: 160,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              right: 10,
                              bottom: 10,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              EditProfilePictureScreen()));
                                },
                                child: CircleAvatar(
                                  backgroundColor: kred,
                                  radius: 15,
                                  child: Icon(
                                    Icons.add,
                                    color: kwhite,
                                    size: 20,
                                  ),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 5,
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
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => UserDetailsScreen()));
                  },
                  child: ListTile(
                    title: Text(
                      'Profile View',
                      style: TextStyle(
                          color: kwhite,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing:
                        Icon(CupertinoIcons.forward, color: kwhite, size: 20),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.editProfileScreen);
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
                        Icon(CupertinoIcons.forward, color: kwhite, size: 20),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Edit interest',
                    style: TextStyle(
                        color: kwhite,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing:
                      Icon(CupertinoIcons.forward, color: kwhite, size: 20),
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
                        Icon(CupertinoIcons.forward, color: kwhite, size: 20),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Instagram',
                    style: TextStyle(
                        color: kwhite,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing:
                      Icon(CupertinoIcons.forward, color: kwhite, size: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 112,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(80, 59, 59, 59),
                      // const Color.fromARGB(255, 51, 51, 51),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  LogoContainer(),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  // ConatinerText(titile: 'PREMIUM'),

                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 10),
                                    child: CardButton(),
                                  ),
                                ],
                              ),
                              Text(
                                'Go Premium to instantly discover your matches',
                                style: TextStyle(
                                    color: kwhite,
                                    letterSpacing: 0,
                                    fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
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
