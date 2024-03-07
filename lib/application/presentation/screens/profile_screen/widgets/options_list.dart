import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/edit_profile_screen/edit_interest.dart';
import 'package:dating_app/application/presentation/screens/profile_screen/widgets/premium_card.dart';
import 'package:dating_app/application/presentation/screens/profile_screen/widgets/static.dart';
import 'package:dating_app/application/presentation/screens/profile_screen/widgets/user_details_view.dart';
import 'package:dating_app/application/presentation/screens/profile_screen/widgets/user_picture.dart';
import 'package:dating_app/application/presentation/screens/settings/settings_screen.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OptionsList extends StatelessWidget {
  const OptionsList({
    super.key,
    required this.edit_sharp,
  });

  final IconData edit_sharp;

  @override
  Widget build(BuildContext context) {
    //  final Size screensize = MediaQuery.of(context).size;
    return Padding(
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
                    UserPictureAvatar(edit_sharp: edit_sharp),
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
                    style: optionsTextStyle(),
                  ),
                  trailing: ForwardIcon(),
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
                    style: optionsTextStyle(),
                  ),
                  trailing: ForwardIcon(),
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
                    style: optionsTextStyle(),
                  ),
                  trailing: ForwardIcon(),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.prederenceScreen);
                },
                child: ListTile(
                  title: Text(
                    'Preference',
                    style: optionsTextStyle(),
                  ),
                  trailing: ForwardIcon(),
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
                    style: optionsTextStyle(),
                  ),
                  trailing: ForwardIcon(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              PremiumCard(),
            ],
          );
        },
      ),
    );
  }
}
