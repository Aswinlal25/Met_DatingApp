import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingAnimation extends StatelessWidget {
  LoadingAnimation({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 50,
        child: const LoadingIndicator(indicatorType: Indicator.ballPulse),
      ),
    );
  }
}
