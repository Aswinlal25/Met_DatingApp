// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/data/services/auth/auth.dart';

import 'package:flutter/material.dart';

class AccountDeleteDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    SizedBox(height: 28),
                    Text(
                      "Are you sure you want to Delete\n Your Account?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white60,
                        letterSpacing: 0.4,
                        wordSpacing: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 22),
                    kheight10,
                    ElevatedButton(
                      onPressed: () {
                        try {
                          {
                            AuthApi authApi = AuthApi();
                            authApi.accountDelete();
                          }
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
                              'Delete',
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
                    kheight10,
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white38,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
