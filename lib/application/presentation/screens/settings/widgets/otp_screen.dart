import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/dialog_box/successful_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

void showOtpBottomSheet(BuildContext context, String newNumber) {
  final PinThemess = PinTheme(
    width: 50,
    height: 55,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Colors.white,
    ),
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.white30, width: 2),
    ),
  );

  final screenSize = MediaQuery.of(context).size;

  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    backgroundColor: kblack,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(133, 51, 51, 51),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Please Enter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'The Verification code Sent to +91$newNumber',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 50),
                    Pinput(
                      androidSmsAutofillMethod:
                          AndroidSmsAutofillMethod.smsRetrieverApi,
                      length: 6,
                      defaultPinTheme: PinThemess,
                      focusedPinTheme: PinThemess.copyWith(
                        decoration: PinThemess.decoration!.copyWith(
                          border: Border.all(color: Colors.red),
                        ),
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty || value.length != 6) {}
                        return null;
                      },
                    ),
                    SizedBox(height: 90),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  SuccessDialog());
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
                            height: screenSize.height * 0.045,
                            width: screenSize.width * 0.15,
                            child: Center(
                              child: Text(
                                'Verify',
                                style: TextStyle(
                                  fontSize: 16,
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
            ],
          ),
        ),
      );
    },
  );
}
