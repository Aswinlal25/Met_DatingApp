import 'dart:async';

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:lottie/lottie.dart';

class LikeButtonWithHeart extends StatelessWidget {
  final double buttonSize = 33.0;

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      onTap: (isLiked) {
        return showTimedDialog(context); // Return the Future<bool?> here
      },
      size: buttonSize,
      circleColor: CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
      bubblesColor: BubblesColor(
        dotPrimaryColor: Colors.red,
        dotSecondaryColor: Colors.red,
      ),
      likeBuilder: (bool isLiked) {
        return Icon(
          Icons.favorite,
          color: isLiked ? Colors.red : Colors.grey,
          size: buttonSize,
        );
      },
    );
  }

  Future<bool?> showTimedDialog(BuildContext context) async {
    Completer<bool?> completer = Completer<bool?>();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: LottieBuilder.asset('assets/animations/love.json'),
        );
      },
    );

    // Complete the Future after 1 second
    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).pop(); // Close the dialog
      completer.complete(true); // Complete the Future with a value
    });

    return completer.future;
  }
}
