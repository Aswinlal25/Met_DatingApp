import 'dart:ui';

import 'package:flutter/material.dart';

class BlureContainer extends StatelessWidget {
  const BlureContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 6.0,
        sigmaY: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 22, 22, 22),
              Colors.transparent,
              Colors.transparent,
              Colors.black.withOpacity(0.4),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
