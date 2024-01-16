import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/common_widgets/drawer.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/users/me.jpg'),
                    radius: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Aswin Lal',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1),
                  )
                ],
              ),
            ),
            
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                'Profile View',
                style: TextStyle(
                    color: kwhite,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(CupertinoIcons.forward, color: kwhite, size: 20),
            ),
            ListTile(
              title: Text(
                'Edit Profile',
                style: TextStyle(
                    color: kwhite,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(CupertinoIcons.forward, color: kwhite, size: 20),
            ),
            ListTile(
              title: Text(
                'Edit interest',
                style: TextStyle(
                    color: kwhite,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(CupertinoIcons.forward, color: kwhite, size: 20),
            ),
            
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.prederenceScreen);
              },
              child: ListTile(
                title: Text(
                  'Preference',
                  style: TextStyle(
                      color: kwhite,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(CupertinoIcons.forward, color: kwhite, size: 20),
              ),
            ),
            ListTile(
              title: Text(
                'Instagram',
                style: TextStyle(
                    color: kwhite,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(CupertinoIcons.forward, color: kwhite, size: 20),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(                          
                height: 112,
                decoration: BoxDecoration(
                  color:Color.fromARGB(80, 59, 59, 59),
                 // const Color.fromARGB(255, 51, 51, 51),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
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
                                padding: const EdgeInsets.only(top: 8, left: 10),
                                child: CardButton(),
                              ),
                            ],
                          ),
                          Text(
                            'Go Premium to instantly discover your matches',
                            style: TextStyle(
                                color: kwhite, letterSpacing: 0, fontSize: 12),
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
          ],
        ),
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
