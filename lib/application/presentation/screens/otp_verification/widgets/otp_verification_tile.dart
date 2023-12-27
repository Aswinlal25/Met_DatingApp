import 'package:flutter/material.dart';

 
 
class OTPNumberTIle extends StatelessWidget {
  
   OTPNumberTIle({super.key, required this.first, required this.last,});

  final bool first;
 final bool last;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.5),
      child: Container(
        height: 65,
        width: 47,
        child: AspectRatio(aspectRatio: 0.7,
        child: TextField(autofocus: true,
        onChanged: (value){
          if(value.length == 1 &&  last == false){
         FocusScope.of(context).nextFocus();
          }
          if(value.length == 0 &&  first == false){
         FocusScope.of(context).previousFocus();
          }
        },
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(counter: Offstage(),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.black26),
        borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.red)),
        ),),
      )),
    );
  }
}
