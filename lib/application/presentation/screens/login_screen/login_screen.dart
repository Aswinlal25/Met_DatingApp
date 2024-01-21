import 'package:dating_app/application/presentation/screens/login_screen/widgets/buttonpart3.dart';
import 'package:dating_app/application/presentation/screens/login_screen/widgets/textpart1.dart';
import 'package:dating_app/application/presentation/screens/login_screen/widgets/textpart2.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(loginbackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: gradientBackground(),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextPart1(screenSize: screenSize),
                TextPart2(screenSize: screenSize),
                SizedBox(
                  height: screenSize.width > 600 ? 100 : 80,
                ),
                Center(
                    child: ButtonPart3(
                  screenSize: screenSize,
                )),
                SizedBox(height: screenSize.width > 600 ? 60 : 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
