import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey, // Placeholder color
      child: Center(
        child: Icon(
          Icons.image,
          size: 50,
          color: Colors.white, // Icon color
        ),
      ),
    );
  }
}
