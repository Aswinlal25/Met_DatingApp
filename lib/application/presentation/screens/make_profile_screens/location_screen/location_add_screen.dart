// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/colors.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              CupertinoIcons.back,
              color: kwhite,
            )),
        title: Text(
          'User Location',
          style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
                'Find Love Closer Than You Think!\nAdd your location to connect with Soulmates near you\nLet the journey to love begin!',
                style: TextStyle(color: Colors.white60, letterSpacing: 0.3)),
            SizedBox(
              height: 100,
            ),
            Container(
              child: Center(
                child: Lottie.network(
                  'https://lottie.host/8d1900aa-2305-4476-a641-4470ce445fad/LkL5pQaURF.json',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.homePage);
              },
              style: ElevatedButton.styleFrom(
                primary: kred,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 37,
                  width: 280,
                  child: Center(
                    child: Text(
                      'Allow',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: kwhite,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
