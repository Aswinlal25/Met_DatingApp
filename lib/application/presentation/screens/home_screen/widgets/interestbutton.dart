import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class InterestsBox extends StatelessWidget {
  final String chipName;

  const InterestsBox({
    Key? key,
    required this.chipName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, bottom: 8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 60, 60, 60),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          chipName,
          style: TextStyle(color: kwhite, letterSpacing: 1.2, fontSize: 10),
        ),
      ),
    );
  }
}
