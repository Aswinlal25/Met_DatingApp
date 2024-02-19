import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  final double min;
  final double max;
  final double startValue;
  final double endValue;
  final ValueChanged<RangeValues> onChanged;

  RangeSliderWidget({
    required this.min,
    required this.max,
    required this.startValue,
    required this.endValue,
    required this.onChanged,
  });

  @override
  _RangeSliderWidgetState createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  late RangeValues _currentRangeValues;

  @override
  void initState() {
    super.initState();
    _currentRangeValues = RangeValues(widget.startValue, widget.endValue);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SizedBox(
        //   width: 10,
        // ),
        // Text(
        //   '${_currentRangeValues.start.round().toString()}',
        //   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        // ),
        Expanded(
          child: RangeSlider(
            activeColor: Colors.red, // Use your desired active color
            inactiveColor: Color.fromARGB(255, 65, 65, 65),
            values: _currentRangeValues,
            min: widget.min,
            max: widget.max,
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
                widget.onChanged(values);
              });
            },
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
          ),
        ),
        Text(
          '${_currentRangeValues.start.round().toString()} - ${_currentRangeValues.end.round().toString()}',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ],
    );
  }
}

// class RangeSliderWidget extends StatefulWidget {
//   @override
//   _RangeSliderWidgetState createState() => _RangeSliderWidgetState();
// }

// class _RangeSliderWidgetState extends State<RangeSliderWidget> {
//   late RangeValues _currentRangeValues;

//   final GetUserPreference getUserPreference = GetUserPreference();

//   @override
//   void initState() {
//     context.read<UsersBloc>().add(UsersEvent.getprefrence());
//     print('pre-------------${getUserPreference.data!.toJson()}');
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (getUserPreference.data != null) {
//       _currentRangeValues = RangeValues(
//         getUserPreference.data!.minAge!.toDouble(),
//         getUserPreference.data!.maxAge!.toDouble(),
//       );
//     } else {
//       // Handle the case where getUserPreference.data is null
//       _currentRangeValues =
//           RangeValues(18.0, 30.0); // Default values or handle accordingly
//     }

//     return Row(
//       children: [
//         SizedBox(
//           width: 10,
//         ),
//         Text(
//           '${_currentRangeValues.start.round().toString()}',
//           style: TextStyle(color: Colors.white),
//         ),
//         Expanded(
//           child: BlocBuilder<UsersBloc, UsersState>(
//             builder: (context, state) {
//               return RangeSlider(
//                 activeColor: kred,
//                 inactiveColor: Color.fromARGB(255, 65, 65, 65),
//                 values: _currentRangeValues,
//                 min: 0,
//                 max: 50,
//                 onChanged: (RangeValues values) {
//                   setState(() {
//                     _currentRangeValues = values;
//                     // context.read<UsersBloc>().add()
//                   });
//                 },
//                 labels: RangeLabels(
//                   _currentRangeValues.start.round().toString(),
//                   _currentRangeValues.end.round().toString(),
//                 ),
//               );
//             },
//           ),
//         ),
//         Text(
//           '${_currentRangeValues.end.round().toString()}',
//           style: TextStyle(color: Colors.white),
//         ),
//       ],
//     );
//   }
// }
