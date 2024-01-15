import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
     
      body:
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Center(
            child: Icon(CupertinoIcons.heart_fill,color: kred,size: 100,),
                 ),
         ],
       ),
    );
  }
}