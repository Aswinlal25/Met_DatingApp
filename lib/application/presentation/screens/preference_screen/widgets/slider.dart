import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int _sliderValue = 0;



  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Expanded(
          child: Slider(
            activeColor: Colors.red,
            inactiveColor: Color.fromARGB(255, 65, 65, 65),
            value: _sliderValue.toDouble(),
            onChanged: (double value) {
              setState(() {
                _sliderValue = value.round();
              });
            },
            min: 0,
            max: 50,
          ),
        ),
        Text(
          '$_sliderValue',
          style: TextStyle(color: Colors.white),
        ),
        
      ],
    );
  }
}
