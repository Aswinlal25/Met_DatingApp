// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/background_images/Login_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.9),
                Colors.transparent,
               // Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.4)
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Dating,\nbetter than\never before',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: kwhite),
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Love is not about how many days,\nmonths, or years you have been together.\nLove is about how much you love each\nother every single day.',
                        style: TextStyle(fontSize: 15, color: Colors.white54),
                      )),
                  SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                    onPressed: () {
                     // Navigator.of(context).pushNamed(phoneNoInputPage);
                       Navigator.pushNamed(context, Routes.phoneNoInputPage);
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
                            'Login with Phone Number',
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
                  SizedBox(height: 40)
                ]),
          ),
        ),
      ),
    );
  }
}
