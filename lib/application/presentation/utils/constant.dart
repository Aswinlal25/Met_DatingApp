import 'package:flutter/material.dart';

const String errorMsg = 'Something went wrong, please try again';


//background images

const String  loginbackground = 'assets/images/background_images/Login_background.jpg';

const String  numberinputbacakground = 'assets/images/background_images/number_background.jpeg';

const kheight10 = SizedBox(
  height: 10,
);


const kheight80 =  SizedBox(
                    height: 80,
                  );


BoxDecoration gradientBackground() {
    return BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.transparent,
              Colors.black.withOpacity(0.4)
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        );
  }                  