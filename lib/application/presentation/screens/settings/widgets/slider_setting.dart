import 'package:dating_app/application/business_logic/Users/users_bloc.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/domain/modules/edit_uder_preference/edit_uder_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSlider2 extends StatefulWidget {
  final int min;
  final int max;
  final int initialValue;
  final ValueChanged<int> onChanged;

  CustomSlider2({
    required this.min,
    required this.max,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider2> {
  late int _sliderValue;
  bool isSwitchOn = false;
  bool isEdited = false;

  @override
  void initState() {
    _sliderValue = widget.initialValue;
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
                      'Maximum Distance',
                      style: TextStyle(
                          letterSpacing: 0.6,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Text(
                      '${_sliderValue} km.',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ],
                ),
                kheight20,
                Slider(
                  activeColor: Colors.red,
                  inactiveColor: Color.fromARGB(255, 65, 65, 65),
                  value: _sliderValue.toDouble(),
                  onChanged: (double value) {
                    setState(() {
                      isEdited = true;
                      _sliderValue = value.round();
                      widget.onChanged(_sliderValue);
                    });
                  },
                  min: widget.min.toDouble(),
                  max: widget.max.toDouble(),
                ),
                kheight10,
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
                                context.read<UsersBloc>().add(
                                    UsersEvent.editprefrence(
                                        editUserPreference: EditUserPreference(
                                            minAge:
                                                userspref?.data?.minAge ?? 0,
                                            maxAge:
                                                userspref?.data?.maxAge ?? 0,
                                            gender:
                                                userspref?.data?.gender ?? 0,
                                            maxDistance: _sliderValue)));
                                isSwitchOn = newValue;
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
