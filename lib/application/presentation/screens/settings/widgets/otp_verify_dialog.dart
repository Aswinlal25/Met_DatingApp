// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar2.dart';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpVerifyDialog extends StatelessWidget {
  static const IconData heart_broken_sharp =
      IconData(0xf0421, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    final PinThemes = PinTheme(
      width: 40,
      height: 45,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.white70,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white12, width: 2),
      ),
    );

    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color.fromARGB(255, 28, 28, 28),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    kheight20,
                    Text(
                      "OTP",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white60,
                          letterSpacing: 0.4,
                          wordSpacing: 1.5,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 28),
                    Text(
                      "We've sent the code to your phone",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white60,
                          letterSpacing: 0.4,
                          wordSpacing: 1),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 22),
                    Row(
                      children: [
                        Form(
                          //key: context.read<AuthBloc>().OTPKey,
                          child: Pinput(
                            androidSmsAutofillMethod:
                                AndroidSmsAutofillMethod.smsRetrieverApi,
                            // controller: context.read<AuthBloc>().pinController,
                            length: 6,
                            defaultPinTheme: PinThemes,
                            focusedPinTheme: PinThemes.copyWith(
                              decoration: PinThemes.decoration!.copyWith(
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
                    kheight50,
                    ElevatedButton(
                      onPressed: () {
                        try {
                          {}
                        } catch (e) {
                          print('Error: $e');
                          // Handle any exceptions here
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        // Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: 20,
                          width: 160,
                          child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    kheight20
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
