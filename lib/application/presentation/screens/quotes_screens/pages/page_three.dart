// ignore_for_file: body_might_complete_normally_nullable

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
                    'assets/images/background_images/The 77 Most Beautiful Couple Photos That You Will Ever See.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.8),
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
                              height: 70,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Don’t wait anymore. find your soul mate ",
                                  style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 1,
                                      color: kwhite),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Right Now !",
                                  style: TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                      color: kwhite),
                                )),
                            SizedBox(
                              height: 520,
                            ),
                            SlideAction(
                              // animationDuration: Duration(milliseconds: 2),
                              height: 65,
                              borderRadius: 42,
                              elevation: 0,
                              innerColor: Colors.black45,
                              outerColor: Color.fromARGB(255, 207, 64, 54),
                              sliderButtonIcon: const Icon(
                                CupertinoIcons.heart_fill,
                                color: kred,
                              ),
                              text: 'Slide to Make profile',
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: kwhite,
                              ),

                              onSubmit: () {
                                Navigator.pushNamed(
                                    context, Routes.userInfoPage);
                              },
                            ),
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
            )
            // SizedBox(height: 0),

            ));
  }
}
