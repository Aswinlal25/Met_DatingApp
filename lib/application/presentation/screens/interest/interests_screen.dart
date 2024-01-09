import 'package:dating_app/application/presentation/screens/interest/widgets/maintitilecard.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class InterersUsersScreen extends StatelessWidget {
  const InterersUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'More Recommend',
                        style: TextStyle(
                            color: kwhite,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      )),
                ),
                MainTitleCard(
                    titletext: 'Photography', users: 'assets/users/jintu.jpg'),
                MainTitleCard(
                    titletext: 'Photography', users: 'assets/users/WhatsApp Image 2024-01-09 at 13.21.12_4d987ed8.jpg'),
                MainTitleCard(
                    titletext: 'Photography', users: 'assets/users/WhatsApp Image 2024-01-09 at 13.21.48_33697716.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
