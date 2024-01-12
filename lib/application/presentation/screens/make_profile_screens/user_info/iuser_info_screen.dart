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
    // Get the screen size
    Size screenSize = MediaQuery.of(context).size;

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
            padding: EdgeInsets.all(screenSize.width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenSize.height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenSize.width * 0.04),
                  child: Text(
                    'Name',
                    style: TextStyle(
                      color: kwhite,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Container(
                  height: screenSize.height * 0.07,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 51, 51, 51),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: screenSize.width * 0.02),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          color: Colors.white38,
                          fontWeight: FontWeight.w400,
                          fontSize: screenSize.width * 0.03,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenSize.width * 0.02),
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenSize.width * 0.04),
                  child: Text(
                    'Describe yourself',
                    style: TextStyle(
                      color: kwhite,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Container(
                  height: screenSize.height * 0.16,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 51, 51, 51),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: screenSize.width * 0.02),
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
                          fontSize: screenSize.width * 0.03,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(screenSize.width * 0.02),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenSize.width * 0.04),
                      child: Text(
                        'Country',
                        style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenSize.width * 0.1),
                      child: Text(
                        'Gender',
                        style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: screenSize.height * 0.07,
                      width: screenSize.width * 0.42,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 51, 51, 51),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: screenSize.width * 0.02),
                        child: TextFormField(
                          
                          keyboardType: TextInputType.name,
                          style: TextStyle(
                            color: kwhite,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Country',
                            hintStyle: TextStyle(
                              color: Colors.white38,
                              fontWeight: FontWeight.w400,
                              fontSize: screenSize.width * 0.03,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(screenSize.width * 0.02),
                          ),
                        ),
                      ),
                    ),
                    GenderDropdown(),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * 0.29,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
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
                        height: screenSize.height * 0.045,
                        width: screenSize.width * 0.75,
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontSize: screenSize.width * 0.04,
                              color: kwhite,
                              //fontWeight: FontWeight.bold
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
    );
  }
}
