// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/business_logic/Auth/auth_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
import 'package:dating_app/domain/modules/phone_number_model/phone_number_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonPart extends StatelessWidget {
  ButtonPart({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.otpHasError) {
            print("there is somw error occur");
            showSnack(
              context: context,
              message: 'Enter valid number',
            );
          } else if (state.phoneNumberResponseModel != null) {
            print("f;unction is okey");
            Navigator.pushNamed(
              context,
              Routes.otpVerfication,
            );
          }
        },
        builder: (context, state) {
          if (state.otpHasError) {
            return LoadingAnimation(width: 50);
          } else {
            return ElevatedButton(
              onPressed: () {
                if (context
                    .read<AuthBloc>()
                    .phonekey
                    .currentState!
                    .validate()) {
                  print("buptton  is clicked");
                  PhoneNumberModel model = PhoneNumberModel(
                    phNo: context.read<AuthBloc>().poneController.text,
                  );
                  context
                      .read<AuthBloc>()
                      .add(AuthEvent.otpLogin(phoneNumberModel: model));

                  if (state.otpIsLoading) {
                    LoadingAnimation(width: 50.0);
                  }
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
                  height: screenSize.height * 0.04,
                  width: screenSize.width * 0.22,
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: screenSize.width * 0.04,
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
    );
  }
}
