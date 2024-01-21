// ignore_for_file: must_call_super

import 'dart:async';

import 'package:dating_app/application/business_logic/Auth/auth_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      context.read<AuthBloc>().add(AuthEvent.log());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kblack,
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.isLoggedIn) {
              Navigator.popAndPushNamed(context, Routes.bottomNavigation);
            } else {
              Navigator.popAndPushNamed(context, Routes.loginPage);
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image(
                    width: 190,
                    image:
                        AssetImage('assets/images/logos/Met_logo_black.png')),
              ),
            ],
          ),
        ));
  }
}
