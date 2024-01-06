import 'package:flutter/material.dart';

class HeartButton extends StatelessWidget {
  final IconData icon;

  const HeartButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 37, 37, 37),
      ),
      child: IconButton(
        onPressed: () {
          // Handle button press
        },
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}