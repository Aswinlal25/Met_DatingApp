// drawer_screen.dart
// ignore_for_file: unused_element, deprecated_member_use, must_be_immutable
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/dialog_box/custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                    color: Color.fromARGB(80, 59, 59, 59),
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
                                  width: 2,
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
                  CupertinoIcons.doc_fill,
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
    return GestureDetector(
      onTap: () {
          Navigator.pushNamed(
            context, Routes.loginPage);
      },
      child: Container(
         decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.amber,
                  Colors.amber.shade900,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
        height: 35,
        width: 120,
        child: Center(
          child: Text(
            'PREMIUM',
            style: TextStyle(
              fontSize: 16.0,
              color: kblack,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}
