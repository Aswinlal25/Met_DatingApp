// // ignore_for_file: deprecated_member_use

// import 'package:dating_app/application/presentation/routes/routes.dart';
// import 'package:dating_app/application/presentation/screens/make_profile_screens/interest/widgets/chip.dart';
// import 'package:dating_app/application/presentation/utils/colors.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class InterestScreen extends StatelessWidget {
//   const InterestScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kblack,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         automaticallyImplyLeading: false,
//         leading: InkWell(
//             onTap: () => Navigator.pop(context),
//             child: Icon(
//               CupertinoIcons.back,
//               color: kwhite,
//             )),
//         title: Text(
//           'Interests',
//           style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: [
// SizedBox(
//   height: 10,
// ),
// Align(
//     alignment: Alignment.centerLeft,
//     child: Text(
//       'Interests makes it easier to find who shares your\ninterests.Add some to your profile to make better\nconnections',
//       style: TextStyle(color: Colors.white60, letterSpacing: 0.3),
//     )),
// SizedBox(
//   height: 20,
// ),
// Row(
//   children: [
//     ChoiceChips(chipname: 'Reading'),
//     Spacer(),
//     ChoiceChips(chipname: 'Art and creativity'),
//   ],
// ),
// SizedBox(
//   height: 10,
// ),
// Row(
//   children: [
//     ChoiceChips(chipname: 'Fitness and Execise'),
//     Spacer(),
//     ChoiceChips(chipname: 'Music'),
//   ],
// ),
// SizedBox(
//   height: 10,
// ),
// Row(
//   children: [
//     ChoiceChips(chipname: 'Travel'),
//     Spacer(),
//     ChoiceChips(chipname: 'Movies and TV shows'),
//   ],
// ),
// SizedBox(
//   height: 10,
// ),
// Row(
//   children: [
//     ChoiceChips(chipname: 'Pet'),
//     Spacer(),
//     ChoiceChips(chipname: 'Dance'),
//     Spacer(),
//     ChoiceChips(chipname: 'Gardening'),
//   ],
// ),
// SizedBox(
//   height: 10,
// ),
// Row(
//   children: [
//     ChoiceChips(chipname: 'Cooking and Food'),
//     Spacer(),
//     ChoiceChips(chipname: 'Games'),
//   ],
// ),
// SizedBox(
//   height: 10,
// ),
// Row(
//   children: [
//     ChoiceChips(chipname: 'Photography'),
//     Spacer(),
//     ChoiceChips(chipname: 'Technology'),
//   ],
// ),
// SizedBox(
//   height: 211,
// ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, Routes.userlocation);
//               },
//               style: ElevatedButton.styleFrom(
//                 primary: kred,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: SizedBox(
//                   height: 37,
//                   width: 280,
//                   child: Center(
//                     child: Text(
//                       'Next',
//                       style: TextStyle(
//                         fontSize: 16.0,
//                         color: kwhite,
//                         //fontWeight: FontWeight.bold
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:dating_app/application/presentation/routes/routes.dart';
// import 'package:dating_app/application/presentation/screens/make_profile_screens/interest/widgets/chip.dart';
// import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
// import 'package:flutter/material.dart';

// class InterestScreen extends StatefulWidget {
//   const InterestScreen({Key? key}) : super(key: key);

//   @override
//   _InterestScreenState createState() => _InterestScreenState();
// }

// class _InterestScreenState extends State<InterestScreen> {
//   List<String> selectedInterests = [];

//   void toggleInterest(String interest) {
//     setState(() {
//       if (selectedInterests.contains(interest)) {
//         selectedInterests.remove(interest);
//       } else {
//         if (selectedInterests.length < 5) {
//           selectedInterests.add(interest);
//         }
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         automaticallyImplyLeading: false,
//         leading: InkWell(
//           onTap: () => Navigator.pop(context),
//           child: Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//         ),
//         title: Text(
//           'Interests',
//           style: TextStyle(color: Colors.white, letterSpacing: 1, fontSize: 21),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 10,
//             ),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 'Interests make it easier to find who shares your\ninterests. Add some to your profile to make better\nconnections',
//                 style: TextStyle(color: Colors.white60, letterSpacing: 0.3),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 ChoiceChips(
//                     chipLabel: 'Reading',
//                     onSelected: toggleInterest,
//                     isSelected: selectedInterests.contains('Reading')),
//                 Spacer(),
//                 ChoiceChips(
//                     chipLabel: 'Art and creativity',
//                     onSelected: toggleInterest,
//                     isSelected:
//                         selectedInterests.contains('Art and creativity')),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 ChoiceChips(
//                     chipLabel: 'Fitness and Execise',
//                     onSelected: toggleInterest,
//                     isSelected:
//                         selectedInterests.contains('Fitness and Execise')),
//                 Spacer(),
//                 ChoiceChips(
//                     chipLabel: 'Music',
//                     onSelected: toggleInterest,
//                     isSelected: selectedInterests.contains('Music')),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 ChoiceChips(
//                     chipLabel: 'Travel',
//                     onSelected: toggleInterest,
//                     isSelected: selectedInterests.contains('Travel')),
//                 Spacer(),
//                 ChoiceChips(
//                     chipLabel: 'Movies and TV shows',
//                     onSelected: toggleInterest,
//                     isSelected:
//                         selectedInterests.contains('Movies and TV shows')),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 ChoiceChips(
//                     chipLabel: 'Pet',
//                     onSelected: toggleInterest,
//                     isSelected: selectedInterests.contains('Pet')),
//                 Spacer(),
//                 ChoiceChips(
//                     chipLabel: 'Dance',
//                     onSelected: toggleInterest,
//                     isSelected: selectedInterests.contains('Dance')),
//                 Spacer(),
//                 ChoiceChips(
//                     chipLabel: 'Gardening',
//                     onSelected: toggleInterest,
//                     isSelected: selectedInterests.contains('Gardening')),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 ChoiceChips(
//                     chipLabel: 'Cooking and Food',
//                     onSelected: toggleInterest,
//                     isSelected: selectedInterests.contains('Cooking and Food')),
//                 Spacer(),
//                 ChoiceChips(
//                     chipLabel: 'Games',
//                     onSelected: toggleInterest,
//                     isSelected: selectedInterests.contains('Games')),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 ChoiceChips(
//                     chipLabel: 'Photography',
//                     onSelected: toggleInterest,
//                     isSelected: selectedInterests.contains('Photography')),
//                 Spacer(),
//                 ChoiceChips(
//                     chipLabel: 'Technology',
//                     onSelected: toggleInterest,
//                     isSelected: selectedInterests.contains('Technology')),
//               ],
//             ),
//             SizedBox(
//               height: 211,
//             ),
           
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 print(selectedInterests.toString());
//                 if(selectedInterests.length >= 3){
//                    Navigator.pushNamed(context, Routes.userlocation);
//                 }else{
//                   showSnack(context: context, message: 'Select at least 3 interests !',color: Colors.transparent);
//                 }
//                 // Navigator.pushNamed(context, Routes.userlocation);
//               },
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.red,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: SizedBox(
//                   height: 37,
//                   width: 280,
//                   child: Center(
//                     child: Text(
//                       'Next (${selectedInterests.length}/5 selected)',
//                       style: TextStyle(
//                         fontSize: 16.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/interest/widgets/chip.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
import 'package:flutter/material.dart';

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
                  isSelected: selectedInterests.contains('Reading'),
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Art and creativity',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('Art and creativity'),
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
                  isSelected: selectedInterests.contains('Fitness and Execise'),
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Music',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('Music'),
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
                  isSelected: selectedInterests.contains('Travel'),
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Movies and TV shows',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('Movies and TV shows'),
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
                  isSelected: selectedInterests.contains('Pet'),
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Dance',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('Dance'),
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Gardening',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('Gardening'),
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
                  isSelected: selectedInterests.contains('Cooking and Food'),
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Games',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('Games'),
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
                  isSelected: selectedInterests.contains('Photography'),
                ),
                Spacer(),
                ChoiceChips(
                  chipLabel: 'Technology',
                  onSelected: toggleInterest,
                  isSelected: selectedInterests.contains('Technology'),
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.26,
            ),
           
            ElevatedButton(
              onPressed: () {
                print(selectedInterests.toString());
                if (selectedInterests.length >= 3) {
                  Navigator.pushNamed(context, Routes.userlocation);
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
            ),
            
          ],
        ),
      ),
    );
  }
}
