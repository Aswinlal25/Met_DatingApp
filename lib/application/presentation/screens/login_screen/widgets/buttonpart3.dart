// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonPart3 extends StatelessWidget {
  const ButtonPart3({
    super.key,
    required Size screenSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
