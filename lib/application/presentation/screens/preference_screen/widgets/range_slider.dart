import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  @override
  _RangeSliderWidgetState createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues _currentRangeValues = RangeValues(18.0, 30.0);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Text(
          '${_currentRangeValues.start.round().toString()}',
          style: TextStyle(color: Colors.white),
        ),
        Expanded(
          child: RangeSlider(
            activeColor: kred,
            inactiveColor: Color.fromARGB(255, 65, 65, 65),
            values: _currentRangeValues,
            min: 0,
            max: 50,
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
          ),
        ),
        Text(
          '${_currentRangeValues.end.round().toString()}',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
