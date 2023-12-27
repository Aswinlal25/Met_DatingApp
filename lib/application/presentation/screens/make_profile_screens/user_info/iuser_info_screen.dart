
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
        title: Text('Personal information',style: TextStyle(color: kwhite,letterSpacing: 1,fontSize: 21),),
      ),
    );
  }
}