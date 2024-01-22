import 'package:dating_app/domain/modules/profile/profile_model/profile_model.dart';
import 'package:flutter/material.dart';

class GenderDropdown extends StatefulWidget {
  @override
  _GenderDropdownState createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  int selectedGender = 1; // Default selection (1 for Male)
   
    
  Map<String, int> genderValueMap = {
    'Male': 1,
    'Female': 2,
    'Others': 3,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 165,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 51, 51, 51),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<int>(
            value: selectedGender,
            onChanged: (int? newValue) {
              setState(() {
                selectedGender = newValue!;
                ProfileModel(genderId: selectedGender);
              });
            },
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 2,
            ),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            items: genderValueMap.entries
                .map<DropdownMenuItem<int>>((MapEntry<String, int> entry) {
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
          ),
        ),
      ),
    );
  }
}
