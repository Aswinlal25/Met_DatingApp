import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LikesEmptyContainer extends StatelessWidget {
  const LikesEmptyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 160,
              child: LottieBuilder.asset(
                'assets/animations/nRrkDCahyG.json',
                fit: BoxFit.fill,
              ),
            ),
            Text(
              'No likes available',
              style: TextStyle(
                color: kwhite,
                fontSize: 17,
                fontWeight: FontWeight.w200,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
