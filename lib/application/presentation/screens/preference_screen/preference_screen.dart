// ignore_for_file: deprecated_member_use
import 'package:dating_app/application/business_logic/Users/users_bloc.dart';
import 'package:dating_app/application/presentation/screens/preference_screen/widgets/dropdown_edit_screen.dart';
import 'package:dating_app/application/presentation/screens/preference_screen/widgets/range_slider.dart';
import 'package:dating_app/application/presentation/screens/preference_screen/widgets/slider.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/domain/modules/edit_uder_preference/edit_uder_preference.dart';
import 'package:dating_app/domain/modules/get_user_preference/get_user_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreferenceScreen extends StatefulWidget {
  const PreferenceScreen({Key? key}) : super(key: key);

  @override
  State<PreferenceScreen> createState() => _PreferenceScreenState();
}

class _PreferenceScreenState extends State<PreferenceScreen> {
  late int gender;
  late int distance;
  late int minAge;
  late int maxAge;
  bool editedGender = false;
  bool editedDistance = false;
  bool editedAgeRange = false;

  @override
  void initState() {
    context.read<UsersBloc>().add(UsersEvent.getprefrence());
    distance = 0;
    gender = 0;
    minAge = 0;
    maxAge = 0;
    super.initState();
  }

  final GetUserPreference getUserPreference = GetUserPreference();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(CupertinoIcons.back, color: kwhite)),
        title: Text(
          'Edit Preference',
          style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocConsumer<UsersBloc, UsersState>(
          listener: (context, state) {},
          builder: (context, state) {
            final userPreference =
                context.read<UsersBloc>().state.getUserPreference;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight10,
                Text(
                  'Customize your preferences from distance and age range to gender. Choose wisely now, or adjust anytime for the best matches. Your journey, your choices!',
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      fontSize: 13),
                ),
                kheight20,
                Text(
                  'Distance',
                  style: TextStyle(
                    color: kwhite,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                kheight10,
                CustomSlider(
                  min: 0,
                  max: 50,
                  initialValue: userPreference?.data?.maxDistance ?? 15,
                  onChanged: (value) {
                    setState(() {
                      editedDistance = true;
                      print(value);
                      distance = value;
                    });
                  },
                ),
                kheight50,
                Text(
                  'Age Range',
                  style: TextStyle(
                    color: kwhite,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                kheight10,
                RangeSliderWidget(
                  min: 0.0,
                  max: 50.0,
                  startValue: userPreference?.data?.minAge?.toDouble() ?? 10.0,
                  endValue: userPreference?.data?.maxAge?.toDouble() ?? 30.0,
                  onChanged: (RangeValues value) {
                    setState(() {
                      editedAgeRange = true;
                      minAge = value.start.round().toInt();
                      maxAge = value.end.round().toInt();
                    });
                  },
                ),
                kheight50,
                Text(
                  'Gender',
                  style: TextStyle(
                    color: kwhite,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                kheight20,
                GenderDropdown2(
                  initialValue: userPreference?.data?.gender ?? 1,
                  onGenderSelected: (selectedGender) {
                    setState(() {
                      editedGender = true;
                      gender = selectedGender;
                      print(gender);
                    });
                  },
                ),
                SizedBox(
                  height: screenSize.width * 0.54,
                ),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    context.read<UsersBloc>().add(UsersEvent.editprefrence(
                        editUserPreference: EditUserPreference(
                            minAge: editedAgeRange
                                ? minAge
                                : userPreference?.data?.minAge ?? 0,
                            maxAge: editedAgeRange
                                ? maxAge
                                : userPreference?.data?.maxAge ?? 0,
                            gender: editedGender
                                ? gender
                                : userPreference?.data?.gender ?? 0,
                            maxDistance: editedDistance
                                ? distance
                                : userPreference?.data?.maxDistance ?? 0)));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: kred,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: screenSize.height * 0.045,
                      width: screenSize.width * 0.75,
                      child: Center(
                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.04,
                            color: kwhite,
                            //fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
