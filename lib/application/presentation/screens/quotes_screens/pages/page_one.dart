// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background_images/met_image4.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.1)
                  ], begin: Alignment.bottomLeft, end: Alignment.topCenter)),
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'No more\nlonely days!',
                                  style: TextStyle(
                                      fontSize: 33,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 1,
                                      color: kwhite),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Find Your partner',
                                  style: TextStyle(
                                      fontSize: 37,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1,
                                      color: kwhite),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Lonely days are over, replaced by the joy\nof shared moments and shared love',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white54),
                                )),
                            SizedBox(
                              height: 476,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, Routes.quotesScreen2);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: kred,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SizedBox(
                                    height: 35,
                                    width: 80,
                                    child: Center(
                                      child: Text(
                                        'Continue',
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
                            ),
                          ])),
                ),
                Positioned(top: 40,right: 8,
                  child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.quotesScreen3);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 18, 18, 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: SizedBox(
                                height: 20,
                                width: 29,
                                child: Center(
                                  child: Text(
                                    'SKIP',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: kwhite,
                                      letterSpacing: 1
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),)
              ],
            )));
  }
}
