import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 0, fontWeight: FontWeight.bold,color: kwhite),
    );
  }
}
