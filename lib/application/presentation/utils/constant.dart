import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

const String errorMsg = 'Something went wrong, please try again';

//background images

const String loginbackground =
    'assets/images/background_images/Login_background.jpg';

const String numberinputbacakground =
    'assets/images/background_images/number_background.jpeg';

const kheight10 = SizedBox(
  height: 10,
);

const kheight20 = SizedBox(
  height: 20,
);

const kheight15 = SizedBox(
  height: 15,
);

const kheight50 = SizedBox(
  height: 50,
);

const kheight80 = SizedBox(
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

BoxDecoration BoxStyle() {
  return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      border:
          Border.all(color: const Color.fromARGB(255, 51, 51, 51), width: 2));
}

TextStyle FormTxtStyle() {
  return TextStyle(
    color: kwhite,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
  );
}

Container LogoContainer() {
  return Container(
    width: 100,
    height: 55,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/icons/Met_logo_black1-removebg-preview.png'),
        fit: BoxFit.contain,
      ),
    ),
  );
}
