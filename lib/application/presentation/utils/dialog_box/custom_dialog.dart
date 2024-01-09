import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';



class CustomDialog extends StatelessWidget {
  static const IconData heart_broken_sharp = IconData(0xf0421, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  Widget contentBox(context) {
    return Container(
      
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: const Color.fromARGB(255, 51, 51, 51),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: Color.fromARGB(255, 42, 41, 41) ,
          ),
          height: 120,
          child: Center(
            child: Image.asset(
              'assets/icons/warninglogo.png', // Replace with the path to your image asset
              width: 90, // Adjust the width as needed
              height: 90, // Adjust the height as needed
            ),
          ),
        ),
          Padding(padding: EdgeInsets.all(16),
          child: Column(children: [
            Text(
            "Warning !",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,color: kwhite),
          ),
          SizedBox(height: 15),
          Text(
            "Are you sure you wand to logout ? ",
            style: TextStyle(fontSize: 14,color: kwhite),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 22),
          SlideAction(
            // animationDuration: Duration(milliseconds: 2),
            height: 65,
            borderRadius: 32,
            elevation: 0,
            innerColor:const Color.fromARGB(255, 51, 51, 51) ,
            outerColor: kblack,
            sliderButtonIcon: const Icon(
              CupertinoIcons.forward,
              color: kred,
            ),
            text: 'Slide to logout',
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: kwhite,
            ),

            onSubmit: () {
              
            },
          ),
          ],),)
        ],
      ),
    );
  }
}
