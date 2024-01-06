// ignore_for_file: unused_local_variable
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/bottom_navigation/bottom_nav.dart';
import 'package:dating_app/application/presentation/screens/home_screen/home_screen.dart';
import 'package:dating_app/application/presentation/screens/login_screen/login_screen.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/dob_screen/dob_screen.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/interest/interest_screen.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/location_screen/location_add_screen.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/profile_picture/profile_picture_screen.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/user_info/iuser_info_screen.dart';
import 'package:dating_app/application/presentation/screens/number_input_screen/number_input_screen.dart';
import 'package:dating_app/application/presentation/screens/otp_verification/otp_verification.dart';
import 'package:dating_app/application/presentation/screens/quotes_screens/pages/page_one.dart';
import 'package:dating_app/application/presentation/screens/quotes_screens/pages/page_three.dart';
import 'package:dating_app/application/presentation/screens/quotes_screens/pages/page_two.dart';
//import 'package:dating_app/application/presentation/screens/quotes_screen/quotes_screen.dart';
import 'package:dating_app/application/presentation/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.initail:
        return MaterialPageRoute(builder: (ctx) => const SplashScreen());
      case Routes.loginPage:
        return MaterialPageRoute(builder: (ctx) => const LoginScreen());
      case Routes.phoneNoInputPage:
        return MaterialPageRoute(builder: (ctx) => const NumberScreen());
      case Routes.otpVerfication:
        return MaterialPageRoute(builder: (ctx) => OTPScreen());
      // case Routes.quotesScreen1:
      // return MaterialPageRoute(builder: (ctx)=>QuotesScreen());
      case Routes.quotesScreen1:
        return MaterialPageRoute(builder: (ctx) => const Page1());
      case Routes.quotesScreen2:
        return MaterialPageRoute(builder: (ctx) => const Page2());
      case Routes.quotesScreen3:
        return MaterialPageRoute(builder: (ctx) => const Page3());
      case Routes.userInfoPage:
        return MaterialPageRoute(builder: (ctx) => const UserInfoScreen());
      case Routes.userDOB:
        return MaterialPageRoute(builder: (ctx) => const DobScreen());
      case Routes.userPictrures:
        return MaterialPageRoute(
            builder: (ctx) => const ProfilePictureScreen());
      case Routes.userInterest:
        return MaterialPageRoute(builder: (ctx) => const InterestScreen());
      case Routes.userlocation:
        return MaterialPageRoute(builder: (ctx) => const LocationScreen());
      case Routes.homePage:
        return MaterialPageRoute(builder: (ctx) =>  HomeScreen());
        case Routes.bottomNavigation:
        return MaterialPageRoute(builder: (ctx) =>  BottomNavBar());
      default:
        return _errorScreen();
    }
  }

  static Route<dynamic> _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: const Center(child: Text('Error while navigating')),
      );
    });
  }
}
