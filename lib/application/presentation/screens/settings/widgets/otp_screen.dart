import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

void showOtpBottomSheet(BuildContext context, String newNumber) {
  final PinThemes = PinTheme(
    width: 50,
    height: 55,
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

  final screenSize = MediaQuery.of(context).size;
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: ListView(
            padding: EdgeInsets.all(20),
            shrinkWrap: true,
            children: [
              Text(
                'Please Enter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5,
                ),
              ),
              kheight10,
              Text(
                'The Verification code Sent to +91 ${newNumber}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Pinput(
                  androidSmsAutofillMethod:
                      AndroidSmsAutofillMethod.smsRetrieverApi,
                  length: 6,
                  defaultPinTheme: PinThemes,
                  focusedPinTheme: PinThemes.copyWith(
                    decoration: PinThemes.decoration!.copyWith(
                      border: Border.all(color: Colors.red),
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty || value.length != 6) {}
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10),
              SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kred,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: screenSize.height * 0.045,
                    width: screenSize.width * 0.75,
                    child: Center(
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          fontSize: screenSize.width * 0.043,
                          color: kwhite,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
