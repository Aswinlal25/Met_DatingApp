import 'package:dating_app/application/business_logic/Users/users_bloc.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/domain/modules/edit_uder_preference/edit_uder_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RangeSlider2 extends StatefulWidget {
  final double min;
  final double max;
  final double startValue;
  final double endValue;
  final ValueChanged<RangeValues> onChanged;

  RangeSlider2({
    required this.min,
    required this.max,
    required this.onChanged,
    required this.startValue,
    required this.endValue,
  });

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<RangeSlider2> {
  late RangeValues _currentRangeValues;
  bool isSwitchOn = false;
  bool isEdited = false;

  @override
  void initState() {
    _currentRangeValues = RangeValues(widget.startValue, widget.endValue);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BackgroundBoxStyle(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<UsersBloc, UsersState>(
          builder: (context, state) {
            final userspref = context.read<UsersBloc>().state.getUserPreference;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Age Range',
                      style: TextStyle(
                          letterSpacing: 0.6,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Text(
                      '${_currentRangeValues.start.round().toString()} - ${_currentRangeValues.end.round().toString()}',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                kheight20,
                RangeSlider(
                  activeColor: Colors.red, // Use your desired active color
                  inactiveColor: Color.fromARGB(255, 65, 65, 65),
                  values: _currentRangeValues,
                  min: widget.min,
                  max: widget.max,
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                      widget.onChanged(values);
                      isEdited = true;
                    });
                  },
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                ),
                kheight20,
                isEdited
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Show People in this new range',
                            style: TextStyle(
                                letterSpacing: 0.6,
                                color: fkwhite,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                          Switch(
                            activeColor: kred,
                            activeTrackColor: Color.fromARGB(255, 65, 65, 65),
                            inactiveTrackColor: Color.fromARGB(255, 65, 65, 65),
                            value: isSwitchOn,
                            onChanged: (newValue) {
                              setState(() {
                                isSwitchOn = newValue;
                                context.read<UsersBloc>().add(
                                    UsersEvent.editprefrence(
                                        editUserPreference: EditUserPreference(
                                            minAge: _currentRangeValues.start
                                                .round()
                                                .toInt(),
                                            maxAge: _currentRangeValues.end
                                                .round()
                                                .toInt(),
                                            gender:
                                                userspref?.data?.gender ?? 0,
                                            maxDistance:
                                                userspref?.data?.maxDistance ??
                                                    0)));
                              });
                            },
                          )
                        ],
                      )
                    : SizedBox()
              ],
            );
          },
        ),
      ),
    );
  }
}
