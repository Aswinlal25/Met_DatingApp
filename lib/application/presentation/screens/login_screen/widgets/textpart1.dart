import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class TextPart1 extends StatelessWidget {
  const TextPart1({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Dating,\nbetter than\never before',
        style: TextStyle(
          fontSize: screenSize.width > 600 ? 60 : 40,  
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          color: kwhite,
        ),
      ),
    );
  }
}