import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

void showSnack(
    {required BuildContext context,
    required String message,
    Color? color,
    int time = 1600}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(bottom: 122.0),
      //content: Text("Hello World!"),
      dismissDirection: DismissDirection.none,
      // dismissDirection: DismissDirection.horizontal,
      content: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
                child: Text(
              message,
              style: TextStyle(
                  color: kred, fontWeight: FontWeight.w600, letterSpacing: 1),
            )),
          )),
      duration: Duration(milliseconds: time),
      backgroundColor: color,
    ),
  );
}
