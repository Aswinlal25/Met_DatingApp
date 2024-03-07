import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';

Container LogoContainer() {
  return Container(
    width: 80,
    height: 55,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/icons/Met_logo_black1-removebg-preview.png'),
        fit: BoxFit.contain,
      ),
    ),
  );
}

TextStyle optionsTextStyle() {
  return TextStyle(
      color: kwhite, letterSpacing: 1, fontWeight: FontWeight.bold);
}

Icon ForwardIcon() => Icon(CupertinoIcons.forward, color: fkwhite, size: 20);
