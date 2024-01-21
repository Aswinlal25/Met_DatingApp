import 'package:dating_app/application/business_logic/Auth/auth_bloc.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberInputpart2 extends StatelessWidget {
  const NumberInputpart2({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: screenSize.height * 0.06,
          padding: EdgeInsets.all(screenSize.width * 0.015),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Center(
            child: Text(
              '+91',
              style: TextStyle(
                fontSize: screenSize.width * 0.04,
                fontWeight: FontWeight.bold,
                color: kwhite,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
        SizedBox(
          width: screenSize.width * 0.02,
        ),
        Expanded(
          child: Container(
            height: screenSize.height * 0.06,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Center(
              child: Form(
                key: context.read<AuthBloc>().phonekey,
                child: TextFormField(
                  controller: context.read<AuthBloc>().poneController,
                  keyboardType: TextInputType.phone,
                  style: TextStyle(
                    color: kwhite,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter Mobile Number',
                    hintStyle: TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.w400,
                      fontSize: screenSize.width * 0.04,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      showSnack2(
                        context: context,
                        message: 'Please enter a mobile number',
                      );
                      return null;
                    }
                    // Check if the entered value has exactly 10 digits
                    if (value.length != 10) {
                      showSnack2(
                        context: context,
                        message: 'Mobile number must be 10 digits',
                      );
                      return null;
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
