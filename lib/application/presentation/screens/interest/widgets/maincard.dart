import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainCard extends StatelessWidget {
  MainCard({
    super.key,
    required this.image,
  });

  String image;

  @override
  Widget build(BuildContext context) {
    image = image;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 9),
      child: Container(
        width: 166,
        height: 290,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(image),
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover)),
        child: Container(
          height: 295,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black,
            Colors.transparent,
                        Colors.transparent,
            Colors.transparent,

            // Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.4)
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        ),
      ),
    );
  }
}
