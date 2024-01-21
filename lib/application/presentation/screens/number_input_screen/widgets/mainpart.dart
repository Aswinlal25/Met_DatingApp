import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/number_input_screen/widgets/buttonpart.dart';
import 'package:dating_app/application/presentation/screens/number_input_screen/widgets/textpart.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class MainAllPart extends StatelessWidget {
  const MainAllPart({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: screenSize.height * 0.08,
        ),
        Text(
          'Get OTP',
          style: TextStyle(color: kwhite, fontSize: 16),
        ),
        SizedBox(
          height: screenSize.height * 0.03,
        ),
        InkWell(
          onTap: () => Navigator.pushNamed(context, Routes.bottomNavigation),
          child: Text(
            'Mobile verification',
            style: TextStyle(
              color: kwhite,
              fontSize: screenSize.width * 0.06,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              wordSpacing: 2,
            ),
          ),
        ),
        Text(
          'We will send you the 4 digit verification code',
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
        SizedBox(
          height: screenSize.height * 0.05,
        ),
        NumberInputpart2(screenSize: screenSize),
        SizedBox(height: screenSize.height * 0.55),
        ButtonPart(screenSize: screenSize),
      ],
    );
  }
}
