// import 'package:flutter/material.dart';

// class HeartButton extends StatelessWidget {
//   final IconData icon;
//   final Color iconColor;

//   const HeartButton({
//     Key? key,
//     required this.icon,
//     required this.iconColor,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 60,
//       height: 60,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: const Color.fromARGB(255, 37, 37, 37),
//       ),
//       child: IconButton(
//         onPressed: () {
//           // Handle button press
//         },
//         icon: Icon(
//           icon,
//           color: iconColor,
//         ),
//       ),
//     );
//   }
// }
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class HeartButton extends StatelessWidget {
  final IconData?icon;
  final Color? iconColor;

  const HeartButton({
    Key? key,
     this.icon,
     this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 55,
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(25),
        color:Color.fromARGB(80, 59, 59, 59),
        //  const Color.fromARGB(255, 37, 37, 37),
      ),
      child: Icon(icon,color: kgrey,size: 26),
    );
  }
}
