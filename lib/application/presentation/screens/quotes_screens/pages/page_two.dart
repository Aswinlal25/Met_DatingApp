// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/images/background_images/met__4.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                    Colors.black.withOpacity(0.9)
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
                                  "In a world full of profiles, be someone's",
                                  style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 1,
                                      color: kwhite),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Favorite Story.",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                      color: kwhite),
                                )),
                            SizedBox(
                              height: 540,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Routes.quotesScreen3);
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
                              ],
                            )
                          ])),
                ),
                Positioned(
                    top: 35,
                    left: 15,
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              CupertinoIcons.back,
                              color: kwhite,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        //Text('Go Back',style: TextStyle(fontSize: 17,color: Colors.white54),),
                        // SizedBox(width: 150,),
                      ],
                    ))
              ],
            )));
  }
}
