// ignore_for_file: deprecated_member_use
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/preference_screen/widgets/dropdown_edit_screen.dart';
import 'package:dating_app/application/presentation/screens/preference_screen/widgets/range_slider.dart';
import 'package:dating_app/application/presentation/screens/preference_screen/widgets/slider.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PreferenceScreen extends StatelessWidget {
  const PreferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        leading: Icon(CupertinoIcons.back, color: kwhite),
        title: Text(
          'Edit Preference',
          style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
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
            CustomSlider(),
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
            RangeSliderWidget(),
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
            GenderEditDropdown(),
            SizedBox(
              height: screenSize.width * 0.54,
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pop(context);
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
        ),
      ),
    );
  }
}
