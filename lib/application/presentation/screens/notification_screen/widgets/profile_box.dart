import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 22, 22, 22),
            Colors.transparent,
            Colors.transparent,
            Colors.black.withOpacity(0.4),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '   $name',
              style: TextStyle(
                  color: kwhite, fontWeight: FontWeight.bold, letterSpacing: 1),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
