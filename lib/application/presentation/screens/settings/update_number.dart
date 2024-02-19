import 'package:dating_app/application/presentation/screens/settings/widgets/otp_screen.dart';
import 'package:dating_app/application/presentation/screens/settings/widgets/otp_verify_dialog.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberEditScreen extends StatefulWidget {
  const NumberEditScreen({Key? key}) : super(key: key);

  @override
  State<NumberEditScreen> createState() => _NumberEditScreenState();
}

class _NumberEditScreenState extends State<NumberEditScreen> {
  TextEditingController countrycodeController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isnewnumber = false;

  @override
  void initState() {
    countrycodeController.text = '+91';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        //title: Text('Phone number settings'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Number is ',
                  style: TextStyle(
                    color: kwhite,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5,
                  ),
                ),
                kheight50,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: formKey,
                    child: Row(
                      children: [
                        Container(
                          height: screenSize.height * 0.07,
                          width: screenSize.width * 0.17,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: screenSize.width * 0.02,
                              top: screenSize.height * 0.005,
                            ),
                            child: TextFormField(
                              controller: countrycodeController,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: screenSize.width * 0.05,
                                letterSpacing: 0.5,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.all(screenSize.width * 0.02),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: screenSize.height * 0.07,
                          width: screenSize.width * 0.6,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: screenSize.width * 0.02,
                              top: screenSize.height * 0.005,
                            ),
                            child: TextFormField(
                              controller: numberController,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: screenSize.width * 0.05,
                                letterSpacing: 0.5,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Phone Number',
                                hintStyle: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenSize.width * 0.05,
                                  letterSpacing: 0.5,
                                ),
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.all(screenSize.width * 0.02),
                              ),
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  setState(() {
                                    isnewnumber = true;
                                  });
                                } else {
                                  setState(() {
                                    isnewnumber = false;
                                  });
                                }
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  setState(() {
                                    isnewnumber = false;
                                  });
                                  showSnack(
                                      message:
                                          'Please enter your new phone number',
                                      context: context,
                                      color: kblack);
                                } else if (value.length != 10) {
                                  setState(() {
                                    isnewnumber = false;
                                  });
                                  showSnack(
                                      message:
                                          'Please enter 10 digit phone number',
                                      context: context,
                                      color: kblack);
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenSize.width * 0.03),
                  child: Text(
                    'When you tap "Continue", Met will send a message with a verification code. The verified phone number\ncan be used to Log in',
                    style: TextStyle(
                      color: fkwhite,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                kheight80,
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final newNumber = numberController.text;
                      showOtpBottomSheet(context, newNumber);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isnewnumber ? kred : Color.fromARGB(133, 51, 51, 51),
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
                          'Continue',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.043,
                            color: kwhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // void _showOtpBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return showOtpBottomSheet(context);
  //     },
  //   );
  // }
}
