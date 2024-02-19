// import 'package:dating_app/application/presentation/utils/colors.dart';
// import 'package:flutter/material.dart';

// class InterestsBoxs extends StatelessWidget {
//   final String chipName;

//   const InterestsBoxs({
//     Key? key,
//     required this.chipName,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 5, bottom: 8),
//       child: Container(
//         height: 40,
//         padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
//         decoration: BoxDecoration(
//           color: kblack,
//           borderRadius: BorderRadius.circular(30.0),
//         ),
//         child: Text(
//           chipName,
//           style: TextStyle(color: kwhite, letterSpacing: 1.2, fontSize: 14),
//         ),
//       ),
//     );
//   }
// }
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class InterestsBoxs extends StatelessWidget {
  final String chipName;

  const InterestsBoxs({Key? key, required this.chipName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8, bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      decoration: BoxStyle(),
      //  BoxDecoration(
      //   color: Colors.black,

      //   borderRadius: BorderRadius.circular(20),
      // ),
      child: Text(
        chipName,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
