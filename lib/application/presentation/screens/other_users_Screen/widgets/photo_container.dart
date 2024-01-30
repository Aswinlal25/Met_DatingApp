import 'package:flutter/material.dart';

class PhotoContainer extends StatelessWidget {
  final String image;
  const PhotoContainer({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 37, 37, 37),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black,
            Colors.black.withOpacity(0.0),
            Colors.black.withOpacity(0.0),
            Colors.black.withOpacity(0.0),
            Colors.black.withOpacity(0.0),
            Colors.black.withOpacity(0.0),
            Colors.transparent,
            // Colors.black,
            // withOpacity(0.6)
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        ),
      ),
    );
  }
}
