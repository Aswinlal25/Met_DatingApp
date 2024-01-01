// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/interest/widgets/chip.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InterestScreen extends StatelessWidget {
  const InterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              CupertinoIcons.back,
              color: kwhite,
            )),
        title: Text(
          'Interests',
          style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Align(alignment: Alignment.centerLeft,
              child: Text('Interests makes it easier to find who shares your\ninterests.Add some to your profile to make better\nconnections',style: TextStyle(color: Colors.white60,letterSpacing: 0.3),)),
            SizedBox(height: 20,),
            Row(
              children: [
                ChoiceChips(chipname: 'Reading'),
                Spacer(),
                ChoiceChips(chipname: 'Art and creativity'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ChoiceChips(chipname: 'Fitness and Execise'),
                Spacer(),
                ChoiceChips(chipname: 'Music'),
              ],
            ),
            SizedBox(
              height: 10,),
            Row(
              children: [
                ChoiceChips(chipname: 'Travel'),
                 Spacer(),
                ChoiceChips(chipname: 'Movies and TV shows'),
              ],
            ),
             SizedBox(
              height: 10,),
            Row(
              children: [
                ChoiceChips(chipname: 'Pet'),
                 Spacer(),
                ChoiceChips(chipname: 'Dance'),
                 Spacer(),
                ChoiceChips(chipname: 'Gardening'),
              ],
            ),
             
             SizedBox(
              height: 10,),
            Row(
              children: [
                ChoiceChips(chipname: 'Cooking and Food'),
                 Spacer(),
                ChoiceChips(chipname: 'Games'),
                
              ],
            ),
            SizedBox(
              height: 10,),
            Row(
              children: [
                ChoiceChips(chipname: 'Photography'),
                 Spacer(),
                ChoiceChips(chipname: 'Technology'),
                
              ],
            ),
            SizedBox(height: 211,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.userlocation);
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
                    height: 37,
                    width: 280,
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: kwhite,
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
