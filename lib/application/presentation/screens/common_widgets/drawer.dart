// drawer_screen.dart

// ignore_for_file: unused_element, deprecated_member_use, must_be_immutable

import 'package:dating_app/application/business_logic/Auth/auth_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/dialog_box/custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.close,
                      color: kwhite,
                      size: 30,
                    ))),
          )
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 112,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 51, 51, 51),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 13, horizontal: 15),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                LogoContainer(),
                                SizedBox(
                                  width: 5,
                                ),
                                // ConatinerText(titile: 'PREMIUM'),

                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 10),
                                  child: CardButton(),
                                ),
                              ],
                            ),
                            Text(
                              'Go Premium to instantly discover your matches',
                              style: TextStyle(
                                  color: kwhite,
                                  letterSpacing: 0,
                                  fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.lock_fill,
                  color: kblack56,
                ),
                title: Text(
                  'Privacy policy',
                  style: TextStyle(
                      color: kwhite,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  CupertinoIcons.forward,
                  color: kwhite,
                  size: 20,
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.bookmark_fill,
                  color: kblack56,
                ),
                title: Text(
                  'About us',
                  style: TextStyle(
                      color: kwhite,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  CupertinoIcons.forward,
                  color: kwhite,
                  size: 20,
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.doc,
                  color: kblack56,
                ),
                title: Text(
                  'Privacy policy',
                  style: TextStyle(
                      color: kwhite,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(CupertinoIcons.forward, color: kwhite, size: 20),
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.instagram,
                  color: kblack56,
                ),
                title: Text(
                  'Instagram',
                  style: TextStyle(
                      color: kwhite,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(CupertinoIcons.forward, color: kwhite, size: 20),
              ),
              ListTile(
                leading: Icon(
                  Icons.share,
                  color: kblack56,
                ),
                title: Text(
                  'Share',
                  style: TextStyle(
                      color: kwhite,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(CupertinoIcons.forward, color: kwhite, size: 20),
              ),
              InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomDialog();
                      },
                    );
                    // print('button is work');  
                    //   context.read<AuthBloc>().add(const AuthEvent.signOut());
                    //   Navigator.pushNamedAndRemoveUntil(
                    //       context, Routes.loginPage, (route) => false);
                     
                  },
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.signOut,
                      color: kblack56,
                      size: 19,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                          color: kwhite,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing:
                        Icon(CupertinoIcons.forward, color: kwhite, size: 20),
                  ))
            ],
          ),
        ],
      ),
    );
  }

  Container LogoContainer() {
    return Container(
      width: 80,
      height: 55,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:
              AssetImage('assets/icons/Met_logo_black1-removebg-preview.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  const CardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
       

        Navigator.pushNamed(
            context, Routes.quotesScreen2);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: SizedBox(
          height: 20,
          width: 90,
          child: Center(
            child: Text(
              'PREMIUM',
              style: TextStyle(
                fontSize: 16.0,
                color: kblack,
                //fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
