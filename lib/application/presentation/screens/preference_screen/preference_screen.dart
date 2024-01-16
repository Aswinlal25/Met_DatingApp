import 'package:dating_app/application/presentation/screens/preference_screen/widgets/dropdown_edit_screen.dart';
import 'package:dating_app/application/presentation/screens/preference_screen/widgets/slider.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PreferenceScreen extends StatelessWidget {
  const PreferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                         'Your distance selection determines the range of potential matches. Choose wisely for the best experience. You can always adjust later',

              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
                fontSize: 13
              ),
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
              'Gender',
              style: TextStyle(
                color: kwhite,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
            kheight20,
           
            GenderEditDropdown()
          ],
        ),
      ),
    );
  }
}
