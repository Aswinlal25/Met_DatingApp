// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:dating_app/application/business_logic/Auth/auth_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar2.dart';
import 'package:dating_app/domain/modules/verify_otp_model/verify_otp_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({super.key});

  /// Create Controller

  var otpsvalue;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 55,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black26, width: 2),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/background_images/Engagement Photos_ 33 Fun Ideas for Your Engagement Photo Shoot.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black,
            Colors.transparent,
            Colors.black,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      letterSpacing: 1),
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
                      'Check your phone',
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
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Form(
                          key: context.read<AuthBloc>().OTPKey,
                          child: Pinput(
                            androidSmsAutofillMethod:
                                AndroidSmsAutofillMethod.smsRetrieverApi,
                            controller: context.read<AuthBloc>().pinController,
                            length: 6,
                            defaultPinTheme: defaultPinTheme,
                            focusedPinTheme: defaultPinTheme.copyWith(
                              decoration: defaultPinTheme.decoration!.copyWith(
                                border: Border.all(color: Colors.red),
                              ),
                            ),
                            validator: (String? value) {
                              // Add your validation logic here
                              if (value!.isEmpty || value.length != 6) {
                                showSnack2(
                                    context: context,
                                    message:
                                        'Please enter a valid 6-digit OTP');
                                return null;
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 470),
                    Align(
                      alignment: Alignment.centerRight,
                      child: BlocConsumer<AuthBloc, AuthState>(
                        listener: (context, state) {
                          if (state.verifyOtpHasError) {
                            showSnack(
                                context: context, message: state.message!);
                          } else if (state.verifyOtpResponse != null) {
                            Navigator.pushNamedAndRemoveUntil(context,
                                Routes.quotesScreen1, (route) => false);
                          }
                        },
                        builder: (context, state) {
                          if (state.verifyOtpIsLoading) {
                            return LoadingAnimation(width: 50);
                          } else {
                            return ElevatedButton(
                              onPressed: () {
                                // Validate the OTP input
                                if (context
                                    .read<AuthBloc>()
                                    .OTPKey
                                    .currentState!
                                    .validate()) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.otpVerify(
                                          verifyOtpModel: VerifyOtpModel(
                                            phNo: context
                                                .read<AuthBloc>()
                                                .poneController
                                                .text
                                                .trim(),
                                            code: context
                                                .read<AuthBloc>()
                                                .pinController
                                                .text,
                                          ),
                                        ),
                                      );
                                }
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
                            );
                          }
                        },
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
                          child: Icon(
                            CupertinoIcons.back,
                            color: kwhite,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
