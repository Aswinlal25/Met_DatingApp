// // ignore_for_file: deprecated_member_use

// import 'package:dating_app/application/presentation/routes/routes.dart';
// import 'package:dating_app/application/presentation/utils/colors.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:numberpicker/numberpicker.dart';

// class DobScreen extends StatefulWidget {
//   const DobScreen({super.key});

//   @override
//   State<DobScreen> createState() => _DobScreenState();
// }

// class _DobScreenState extends State<DobScreen> {
//   var date = 1;
//   var month = 01;
//   var year = 2000;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kblack,
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(0, 0, 0, 0),
//         automaticallyImplyLeading: false,
//         leading: InkWell(
//             onTap: () => Navigator.pop(context),
//             child: Icon(
//               CupertinoIcons.back,
//               color: kwhite,
//             )),
//         title: Text(
//           'Your Birthday',
//           style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(
//             height: 135,
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//             decoration: BoxDecoration(
//                 color: Colors.black, borderRadius: BorderRadius.circular(10)),
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   NumberPicker(
//                       minValue: 0,
//                       maxValue: 31,
//                       value: date,
//                       zeroPad: true,
//                       //infiniteLoop: true,
//                       itemWidth: 100,
//                       itemHeight: 80,
//                       onChanged: (value) {
//                         setState(() {
//                           date = value;
//                         });
//                       },
//                       textStyle: TextStyle(
//                           color: Colors.white38,
//                           fontWeight: FontWeight.w500,
//                           fontSize: 25),
//                       selectedTextStyle: TextStyle(
//                           color: kwhite,
//                           fontSize: 45,
//                           fontWeight: FontWeight.bold),
//                       decoration: BoxDecoration(
//                         border: Border(
//                             top: BorderSide(color: kwhite),
//                             bottom: BorderSide(color: kwhite)),
//                       )),
//                   NumberPicker(
//                       minValue: 0,
//                       maxValue: 12,
//                       value: month,
//                       zeroPad: true,
//                       //infiniteLoop: true,
//                       itemWidth: 100,
//                       itemHeight: 80,
//                       onChanged: (value) {
//                         setState(() {
//                           month = value;
//                         });
//                       },
//                       textStyle: TextStyle(
//                           color: Colors.white38,
//                           fontWeight: FontWeight.w500,
//                           fontSize: 25),
//                       selectedTextStyle: TextStyle(
//                           color: kwhite,
//                           fontSize: 45,
//                           fontWeight: FontWeight.bold),
//                       decoration: BoxDecoration(
//                         border: Border(
//                             top: BorderSide(color: kwhite),
//                             bottom: BorderSide(color: kwhite)),
//                       )),
//                   NumberPicker(
//                     minValue: 0,
//                     maxValue: 2024,
//                     value: year,
//                     zeroPad: true,
//                     // infiniteLoop: true,
//                     itemWidth: 100,
//                     itemHeight: 80,
//                     onChanged: (value) {
//                       setState(() {
//                         year = value;
//                       });
//                     },
//                     textStyle: TextStyle(
//                         color: Colors.white38,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 25),
//                     selectedTextStyle: TextStyle(
//                         color: kwhite,
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold),
//                     decoration: BoxDecoration(
//                       border: Border(
//                           top: BorderSide(color: kwhite),
//                           bottom: BorderSide(color: kwhite)),
//                     ),
//                   )
//                 ]),
//           ),
//           SizedBox(
//             height: 220,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               print('dob $date $month $year');

//               Navigator.pushNamed(context, Routes.userPictrures);
//             },
//             style: ElevatedButton.styleFrom(
//               primary: kred,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30.0),
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: SizedBox(
//                 height: 37,
//                 width: 280,
//                 child: Center(
//                   child: Text(
//                     'Next',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       color: kwhite,
//                       //fontWeight: FontWeight.bold
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class DobScreen extends StatefulWidget {
  const DobScreen({Key? key});

  @override
  State<DobScreen> createState() => _DobScreenState();
}

class _DobScreenState extends State<DobScreen> {
  var date = 1;
  var month = 01;
  var year = 2000;

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            CupertinoIcons.back,
            color: kwhite,
          ),
        ),
        title: Text(
          'Your Birthday',
          style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screenSize.height * 0.13,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.05,
              vertical: screenSize.height * 0.02,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NumberPicker(
                  minValue: 0,
                  maxValue: 31,
                  value: date,
                  zeroPad: true,
                  itemWidth: screenSize.width * 0.25,
                  itemHeight: screenSize.height * 0.1,
                  onChanged: (value) {
                    setState(() {
                      date = value;
                    });
                  },
                  textStyle: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w500,
                    fontSize: screenSize.width * 0.05,
                  ),
                  selectedTextStyle: TextStyle(
                    color: kwhite,
                    fontSize: screenSize.width * 0.1,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: kwhite),
                      bottom: BorderSide(color: kwhite),
                    ),
                  ),
                ),
                NumberPicker(
                  minValue: 0,
                  maxValue: 12,
                  value: month,
                  zeroPad: true,
                  itemWidth: screenSize.width * 0.25,
                  itemHeight: screenSize.height * 0.1,
                  onChanged: (value) {
                    setState(() {
                      month = value;
                    });
                  },
                  textStyle: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w500,
                    fontSize: screenSize.width * 0.05,
                  ),
                  selectedTextStyle: TextStyle(
                    color: kwhite,
                    fontSize: screenSize.width * 0.1,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: kwhite),
                      bottom: BorderSide(color: kwhite),
                    ),
                  ),
                ),
                NumberPicker(
                  minValue: 0,
                  maxValue: 2024,
                  value: year,
                  zeroPad: true,
                  itemWidth: screenSize.width * 0.25,
                  itemHeight: screenSize.height * 0.1,
                  onChanged: (value) {
                    setState(() {
                      year = value;
                    });
                  },
                  textStyle: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w500,
                    fontSize: screenSize.width * 0.05,
                  ),
                  selectedTextStyle: TextStyle(
                    color: kwhite,
                    fontSize: screenSize.width * 0.1,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: kwhite),
                      bottom: BorderSide(color: kwhite),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.23,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                print('dob $date $month $year');
                Navigator.pushNamed(context, Routes.userPictrures);
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
                      'Next',
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
          ),
        ],
      ),
    );
  }
}
