import 'package:flutter/material.dart';

class GenderDropdown extends StatefulWidget {
  @override
  _GenderDropdownState createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  String selectedGender = 'Male'; // Default selection

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
          child: DropdownButton<String>(
            value: selectedGender,
            onChanged: (String? newValue) {
              setState(() {
                selectedGender = newValue!;
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
            items: <String>['Male', 'Female', 'Others']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
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
