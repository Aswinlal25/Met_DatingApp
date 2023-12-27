import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: kblack,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image(
                  width: 190,
                  image: AssetImage('assets/images/logos/Met_logo_black.png')),
            ),
          ],
        ));
  }
}
