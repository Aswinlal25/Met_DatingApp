import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

TextStyle TitleTextStyle() {
  return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w800,
      fontSize: 20,
      letterSpacing: 0.5);
}

String getFormattedTime(String timestamp) {
  DateTime dateTime = DateTime.parse(timestamp);
  String formattedTime =
      "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}";
  return formattedTime;
}

TextStyle subtitileStyle() {
  return TextStyle(
    color: Colors.white54,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
  );
}

TextStyle chatTitleStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
  );
}

TextStyle chatHeaderText() {
  return TextStyle(
      color: fkwhite,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1);
}
