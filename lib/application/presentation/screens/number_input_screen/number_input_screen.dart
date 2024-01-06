// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/business_logic/Auth/auth_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
import 'package:dating_app/domain/modules/phone_number_model/phone_number_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

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
                'assets/images/background_images/number_background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black,
            Colors.transparent,
            // Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.9)
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 65,
                    ),
                    Text(
                      'Get OTP',
                      style: TextStyle(color: kwhite, fontSize: 16),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Mobile verification',
                      style: TextStyle(
                          color: kwhite,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          wordSpacing: 2),
                    ),
                    Text(
                      'We will send you the 4 digit verification code',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 55,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            // color: kwhite,
                            border:
                                Border.all(color: Colors.black26, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Center(
                            child: Text(
                              '+91',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: kwhite,
                                  letterSpacing: 2),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              // color: kwhite,
                              border:
                                  Border.all(color: Colors.black26, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Center(
                              child: TextFormField(
                                controller:
                                    context.read<AuthBloc>().poneController,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(
                                    color: kwhite,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                                decoration: InputDecoration(
                                  hintText: 'Enter Mobile Number',
                                  hintStyle: TextStyle(
                                      color: Colors.white38,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 450),
                    Align(
                      alignment: Alignment.centerRight,
                      child: BlocConsumer<AuthBloc, AuthState>(
                        listener: (context, state) {
                          if(state.otpHasError){
                            print("there is somw error occur");
                            showSnack(context: context, message: state.message!);
                          }
                          else if(state.phoneNumberResponseModel != null){
                            print("f;unction is okey");
                            Navigator.pushNamed(context, Routes.otpVerfication);
                          }
                        },
                        builder: (context, state) {
                          return ElevatedButton(
                            onPressed: () {
                               print("button  is clicked");
                              PhoneNumberModel model=PhoneNumberModel(phNo: context.read<AuthBloc>().poneController.text);
                              context.read<AuthBloc>().add(AuthEvent.otpLogin(phoneNumberModel: model));
                              //  Navigator.pushNamed(context, Routes.otpVerfication);
                                 if(state.otpIsLoading){
                                       LoadingAnimation(width: 50.0);
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
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 33,
                  left: 15,
                  child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        CupertinoIcons.back,
                        color: kwhite,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
