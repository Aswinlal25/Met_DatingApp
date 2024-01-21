import 'package:flutter/material.dart';

class TextPart2 extends StatelessWidget {
  const TextPart2({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Love is not about how many days,\nmonths, or years you have been together.\nLove is about how much you love each\nother every single day.',
        style: TextStyle(
          fontSize: screenSize.width > 600 ? 20 : 15,
          color: Colors.white54,
        ),
      ),
    );
  }
}
