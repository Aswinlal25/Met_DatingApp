import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderDropdown2 extends StatefulWidget {
  final int initialValue;
  final void Function(int) onGenderSelected;

  GenderDropdown2({required this.initialValue, required this.onGenderSelected});

  @override
  _GenderDropdownState createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown2> {
  late int selectedGender;

  Map<String, int> genderValueMap = {
    'Male': 2,
    'Female': 1,
    'Others': 3,
  };

  @override
  void initState() {
    selectedGender = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   'Selected Gender: ${genderValueMap.keys.elementAt(selectedGender - 1)}',
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 16,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // SizedBox(height: 10),
        Container(
          height: 55,
          width: 365,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 51, 51, 51),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: DropdownButtonHideUnderline(
              child: BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return DropdownButton<int>(
                    value: selectedGender,
                    onChanged: (int? newValue) async {
                      setState(() {
                        selectedGender = newValue!;
                      });
                      widget.onGenderSelected(selectedGender);
                    },
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                    ),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    items: genderValueMap.entries.map<DropdownMenuItem<int>>(
                        (MapEntry<String, int> entry) {
                      return DropdownMenuItem<int>(
                        value: entry.value,
                        child: Text(
                          entry.key,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2,
                          ),
                        ),
                      );
                    }).toList(),
                    dropdownColor: const Color.fromARGB(255, 51, 51, 51),
                    underline: Container(), // Remove the default underline
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
