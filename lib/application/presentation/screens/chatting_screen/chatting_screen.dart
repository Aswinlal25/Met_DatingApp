// // ignore_for_file: must_be_immutable
// import 'dart:ui';
// import 'package:dating_app/application/business_logic/Chat/chat_bloc.dart';
// import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/custum_appbar.dart';
// import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/input_field.dart';
// import 'package:dating_app/application/presentation/utils/colors.dart';
// import 'package:dating_app/domain/modules/chat/chat_users_model/datum.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ChattingScreen extends StatefulWidget {
//   Datum? chatUsersModel;
//   ChattingScreen({super.key, required this.chatUsersModel});

//   static const IconData send =
//       IconData(0xe571, fontFamily: 'MaterialIcons', matchTextDirection: true);

//   @override
//   State<ChattingScreen> createState() => _ChattingScreenState();
// }

// class _ChattingScreenState extends State<ChattingScreen> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(
//       SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent,
//         // statusBarIconBrightness: Brightness.dark,
//       ),
//     );

//     return Scaffold(
//       // resizeToAvoidBottomInset: false,
//       backgroundColor: kblack,
//       appBar: AppBar(
//         backgroundColor: kblack,
//         automaticallyImplyLeading: false,
//         toolbarHeight: 62.5,
//         flexibleSpace: CustomAppBar(chatUsersModel: widget.chatUsersModel),
//       ),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(widget.chatUsersModel!.user!.image ?? ''),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Colors.black,
//                 Colors.black.withOpacity(0.7),
//                 Colors.transparent,
//                 Colors.black,
//               ],
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//             ),
//           ),
//           child: ClipRect(
//             child: BackdropFilter(
//               filter: ImageFilter.blur(
//                 sigmaX: 5,
//                 sigmaY: 5,
//               ),
//               child: SingleChildScrollView(
//                 // reverse: true,
//                 child: Container(
//                   height: MediaQuery.of(context).size.height,
//                   child: Column(
//                     children: [
//                       SizedBox(height: 660),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           children: [
//                             SizedBox(width: 10),
//                             Icon(
//                               Icons.emoji_emotions,
//                               color: Colors.white30,
//                             ),
//                             SizedBox(width: 10),
//                             InputField(send: ChattingScreen.send),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: must_be_immutable
import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/custum_appbar.dart';
import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/input_field.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/domain/modules/chat/chat_users_model/datum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChattingScreen extends StatefulWidget {
  Datum? chatUsersModel;
  ChattingScreen({super.key, required this.chatUsersModel});

  static const IconData send =
      IconData(0xe571, fontFamily: 'MaterialIcons', matchTextDirection: true);

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        automaticallyImplyLeading: false,
        toolbarHeight: 62.5,
        flexibleSpace: CustomAppBar(chatUsersModel: widget.chatUsersModel),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage(widget.chatUsersModel!.user!.image ?? ''),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.6),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child:
                      SizedBox()), // Add an expanded widget to push the input field to the bottom
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(
                      Icons.emoji_emotions,
                      color: Colors.white30,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                        child: InputField(
                            send: ChattingScreen
                                .send)), // Expanded to take remaining space
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
