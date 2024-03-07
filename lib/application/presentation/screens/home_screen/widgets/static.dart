import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void showTimedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: AlertDialog(
          backgroundColor: Colors.transparent,
          content: LottieBuilder.asset('assets/animations/love.json'),
        ),
      );
    },
  );

  Future.delayed(Duration(seconds: 1), () {
    Navigator.of(context).pop();
  });
}
