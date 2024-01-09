import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonWithHeart extends StatelessWidget {
  final double buttonSize = 33.0;

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: buttonSize,
      circleColor: CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
      bubblesColor: BubblesColor(
        dotPrimaryColor: kred,
       //  Color(0xff33b5e5),
        dotSecondaryColor: kred
        // Color(0xff0099cc),
      ),
      likeBuilder: (bool isLiked) {
        return Icon(
          Icons.favorite,
          color: isLiked ? Colors.red : Colors.grey,
          size: buttonSize,
        );
      },
    //  likeCount: 665,
      // countBuilder: (int? count, bool isLiked, String text) {
      //   var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
      //   Widget result;
      //   if (count == 0) {
      //     result = Text(
      //       "love",
      //       style: TextStyle(color: color),
      //     );
      //   } else
      //     result = Text(
      //       text,
      //       style: TextStyle(color: color),
      //     );
      //   return result;
      // },
    );
  }
}