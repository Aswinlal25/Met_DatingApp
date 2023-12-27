// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/otp_verification/widgets/otp_verification_tile.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_images/Engagement Photos_ 33 Fun Ideas for Your Engagement Photo Shoot.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black,
              //  withOpacity(0.9),
                Colors.transparent,
               // Colors.black.withOpacity(0.4),
                Colors.black,
               // withOpacity(0.6)
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 55,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '+91 9207209856',
                          style: TextStyle(color: kwhite, fontSize: 16),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.quotesScreen1);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: SizedBox(
                                height: 20,
                                width: 49,
                                child: Center(
                                  child: Text(
                                    'RESEND',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: kwhite,
                                      letterSpacing: 1
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Chech your phone',
                      style: TextStyle(
                          color: kwhite,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          wordSpacing: 2),
                    ),
                    Text(
                      "We've sent the code to your phone",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    SizedBox(height: 20,),
          
                    Row(
                      children: [
                        Row(
                         
                          children: [
                            OTPNumberTIle(
                              first: true,
                              last: false,
                            ),
                            OTPNumberTIle(
                              first: false,
                              last: false,
                            ),
                            OTPNumberTIle(
                              first: false,
                              last: false,
                            ),
                            OTPNumberTIle(
                              first: false,
                              last: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                    //  Align(alignment: Alignment.center,
                    //  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    //    children: [
                    //      Text("did't get the OTP  ",style: TextStyle(color: kwhite),),
                    //       InkWell(onTap: () {
                            
                    //       },
                    //         child: Text("RESEND !",style: TextStyle(color: kblack ,fontSize: 17,fontWeight: FontWeight.bold),)),
                    //    ],
                    //  ),
                      
                    //  ),
                    
                     SizedBox(height: 415),
                    Align(alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.quotesScreen1);
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
                            height: 30,
                            width: 80,
                            child: Center(
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: kwhite,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 35,
                  left: 15,
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Icon(CupertinoIcons.back,color: kwhite,)),
                          SizedBox(width: 5,),
                          //Text('Go Back',style: TextStyle(fontSize: 17,color: Colors.white54),),
                          // SizedBox(width: 150,),
                         
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
