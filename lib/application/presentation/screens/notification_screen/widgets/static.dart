import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

Text TitleText() {
  return Text(
    'Likes',
    style: TextStyle(
      color: kwhite,
      fontSize: 24,
      fontWeight: FontWeight.w800,
      letterSpacing: 1,
    ),
  );
}

Text LikeCountText(int? likescount) {
  return Text(
    'Your profile liked by ${likescount} peoples',
    style: TextStyle(
      color: Colors.white60,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
    ),
  );
}

Text PremiumText() {
  return Text(
    'Get the Premium to see their profiles',
    style: TextStyle(
      color: kwhite,
      fontSize: 11,
      fontWeight: FontWeight.w200,
      letterSpacing: 1,
    ),
  );
}
