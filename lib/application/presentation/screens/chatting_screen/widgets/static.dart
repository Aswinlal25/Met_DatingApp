import 'package:flutter/material.dart';

class Statics {
  static const String appSign =
      '4dee0d427442a326b7632fff92d15e8826cbd506d3ba9bcc0087d6e1b8bd2dbc';
  static const int appID = 356263390;
}

TextField msgInputStyle(msgController) {
  return TextField(
    controller: msgController,
    keyboardType: TextInputType.multiline,
    maxLines: null,
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
      hintText: 'Message...',
      hintStyle: TextStyle(color: Colors.grey),
      border: InputBorder.none,
    ),
  );
}
