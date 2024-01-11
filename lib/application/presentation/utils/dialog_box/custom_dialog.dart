// import 'package:dating_app/application/business_logic/Auth/auth_bloc.dart';
// import 'package:dating_app/application/presentation/routes/routes.dart';
// import 'package:dating_app/application/presentation/utils/colors.dart';
// import 'package:flutter/material.dart';

// class CustomDialog extends StatelessWidget {
//   static const IconData heart_broken_sharp =
//       IconData(0xf0421, fontFamily: 'MaterialIcons');
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       child: contentBox(context),
//     );
//   }

//   Widget contentBox(context) {
//     return Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.rectangle,
//         color: const Color.fromARGB(255, 51, 51, 51),
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(16),
//             child: Column(
//               children: [
//                 SizedBox(height: 15),
//                 Text(
//                   "Are you sure you wand to logout ? ",
//                   style: TextStyle(fontSize: 14, color: kwhite),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 22),
                // SlideAction(
                //   height: 69,
                //   borderRadius: 32,
                //   elevation: 0,
                //   innerColor: const Color.fromARGB(255, 51, 51, 51),
                //   outerColor: kblack,
                //   sliderButtonIcon: const Icon(
                //     CupertinoIcons.forward,
                //     color: kwhite,
                //   ),
                //   text: 'Slide to logout',
                //   textStyle: TextStyle(
                //     fontSize: 15,
                //     fontWeight: FontWeight.w500,
                //     color: Colors.red[400],
                //     letterSpacing: 1,
                //   ),
                //   onSubmit: () async {
                //     try {
                //       {
                //         // Now you can use context.read<AuthBloc>() here
                // context.read<AuthBloc>().add(const AuthEvent.signOut());
                // Navigator.pushNamedAndRemoveUntil(
                //   context,
                //   Routes.loginPage,
                //   (route) => false,
                // );
                //       }
                //     } catch (e) {
                //       print('Error: $e');
                //       // Handle any exceptions here
                //     }
                //   },
                // ),
//                 Align(
//                   alignment: Alignment.bottomRight,
//                   child: ElevatedButton(
//                       onPressed: () {
                       
//                        print('button is work');  
//                       context.read<AuthBloc>().add(const AuthEvent.signOut());
//                       Navigator.pushNamedAndRemoveUntil(
//                           context, Routes.loginPage, (route) => false);
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: kblack,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                       ),
//                       child: Text(
//                         'Exit',
//                         style: TextStyle(color: kred),
//                       )),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:dating_app/application/business_logic/Auth/auth_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slide_to_act/slide_to_act.dart'; // Import Bloc library

class CustomDialog extends StatelessWidget {
  static const IconData heart_broken_sharp =
      IconData(0xf0421, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child:  Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: const Color.fromARGB(255, 51, 51, 51),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(height: 15),
                Text(
                  "Are you sure you want to logout?",
                  style: TextStyle(fontSize: 14, color: kwhite),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 22),
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: ElevatedButton(
                //     onPressed: () async {
                //       print('Button is working');
                //       // Use BlocProvider to access AuthBloc
                //       context.read<AuthBloc>().add(const AuthEvent.signOut());
                //       await Navigator.pushNamedAndRemoveUntil(
                //           context, Routes.loginPage, (route) => false);
                //     },
                //     style: ElevatedButton.styleFrom(
                //       primary: kblack,
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //       ),
                //     ),
                //     child: Text(
                //       'Exit',
                //       style: TextStyle(color: kred),
                //     ),
                //   ),
                // )
                SlideAction(
                  height: 69,
                  borderRadius: 32,
                  elevation: 0,
                  innerColor: const Color.fromARGB(255, 51, 51, 51),
                  outerColor: kblack,
                  sliderButtonIcon: const Icon(
                    CupertinoIcons.forward,
                    color: kwhite,
                  ),
                  text: 'Slide to logout',
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.red[400],
                    letterSpacing: 1,
                  ),
                  onSubmit: () async {
                    try {
                      {
                        // Now you can use context.read<AuthBloc>() here
                context.read<AuthBloc>().add(const AuthEvent.signOut());
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  Routes.loginPage,
                  (route) => false,
                );
                      }
                    } catch (e) {
                      print('Error: $e');
                      // Handle any exceptions here
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    )
    );
  }

  
}
