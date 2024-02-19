import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final int min;
  final int max;
  final int initialValue;
  final ValueChanged<int> onChanged;

  CustomSlider({
    required this.min,
    required this.max,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late int _sliderValue;

  @override
  void initState() {
    _sliderValue = widget.initialValue;
    super.initState();
  }

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
                widget.onChanged(_sliderValue);
              });
            },
            min: widget.min.toDouble(),
            max: widget.max.toDouble(),
          ),
        ),
        Text(
          '${_sliderValue} km.',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ],
    );
  }
}
