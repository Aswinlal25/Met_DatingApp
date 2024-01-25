// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/interest/widgets/chip.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/user_info/iuser_info_screen.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({Key? key}) : super(key: key);

  @override
  _InterestScreenState createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  List<String> selectedInterests = [];

  void toggleInterest(String interest) {
    setState(() {
      if (selectedInterests.contains(interest)) {
        selectedInterests.remove(interest);
      } else {
        if (selectedInterests.length < 5) {
          selectedInterests.add(interest);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Interests',
          style: TextStyle(color: Colors.white, letterSpacing: 1, fontSize: 21),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(screenSize.width * 0.05),
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Interests make it easier to find who shares your\ninterests. Add some to your profile to make better\nconnections',
                style: TextStyle(color: Colors.white60, letterSpacing: 0.3),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            Row(
              children: [
                ChoiceChips(
                  chipLabel: 'Reading',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('1'),
                  value: '1',
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Art and creativity',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('2'),
                  value: '2',
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Row(
              children: [
                ChoiceChips(
                  chipLabel: 'Fitness and Execise',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('3'),
                  value: '3',
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Music',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('4'),
                  value: '4',
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Row(
              children: [
                ChoiceChips(
                  chipLabel: 'Travel',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('7'),
                  value: '7',
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Movies and TV shows',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('6'),
                  value: '6',
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Row(
              children: [
                ChoiceChips(
                  chipLabel: 'Pet',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('5'),
                  value: '5',
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Dance',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('8'),
                  value: '8',
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Gardening',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('9'),
                  value: '9',
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Row(
              children: [
                ChoiceChips(
                  chipLabel: 'Cooking and Food',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('10'),
                  value: '10',
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Games',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('13'),
                  value: '13',
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Row(
              children: [
                ChoiceChips(
                  chipLabel: 'Photography',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('11'),
                  value: '11',
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Technology',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('12'),
                  value: '12',
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.26,
            ),
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () async {
                    // print(selectedInterests.toString());
                    if (selectedInterests.length >= 3) {
                      String interestsString = selectedInterests.join(',');

                      print(interestsString.toString());

                      notifier.value.interests = interestsString;

                      if (state.dataIsLoading) {
                        LoadingAnimation(
                          width: 20,
                        );
                      } else {
                        Navigator.pushNamed(context, Routes.userlocation);
                      }
                    } else {
                      showSnack(
                        context: context,
                        message: 'Select at least 3 interests !',
                        color: Colors.transparent,
                      );
                    }
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
                          'Next (${selectedInterests.length}/5 selected)',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.04,
                            color: kwhite,
                            //fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
