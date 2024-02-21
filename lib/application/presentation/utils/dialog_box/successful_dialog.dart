// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/utils/constant.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessDialog extends StatelessWidget {
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
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color.fromARGB(255, 28, 28, 28),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      child: LottieBuilder.asset(
                        'assets/animations/Checkmark.json',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 28),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white60,
                          letterSpacing: 0.4,
                          wordSpacing: 1,
                        ),
                        children: [
                          TextSpan(
                            text: "Verification is successful.\n",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          TextSpan(
                            text:
                                "\nYou can now log in using your\n updated phone number. !",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22),
                    kheight10,
                    kheight10,
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
