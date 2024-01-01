// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/user_info/widgets/dropdown_button.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kblack,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              CupertinoIcons.back,
              color: kwhite,
            )),
        title: Text(
          'Personal information',
          style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Name',
                    style: TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 51, 51, 51),
                    // border: Border.all(color: Colors.white54,width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2),
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10.0),
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Bio',
                    style: TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  height: 155,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 51, 51, 51),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null, // Set to null for unlimited lines
                      style: TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Bio',
                        hintStyle: TextStyle(
                          color: Colors.white38,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Country',
                        style: TextStyle(
                            color: kwhite,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Gender',
                        style: TextStyle(
                            color: kwhite,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 55,
                      width: 165,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 51, 51, 51),
                        // border: Border.all(color: Colors.white54,width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          style: TextStyle(
                              color: kwhite,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2),
                          decoration: InputDecoration(
                            hintText: 'Country',
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
                    GenderDropdown(),
                  ],
                ),
                SizedBox(
                  height: 250,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(phoneNoInputPage);
                    Navigator.pushNamed(context, Routes.userDOB);
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
                      height: 37,
                      width: 280,
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: kwhite,
                            //fontWeight: FontWeight.bold
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
    );
  }
}
