import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingAnimation2 extends StatelessWidget {
  LoadingAnimation2({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      child: LoadingIndicator(
          indicatorType: Indicator.circleStrokeSpin,
          colors: const [Colors.white60],
          strokeWidth: 2,
          backgroundColor: Colors.black,
          pathBackgroundColor: Colors.black),
    );
  }
}
