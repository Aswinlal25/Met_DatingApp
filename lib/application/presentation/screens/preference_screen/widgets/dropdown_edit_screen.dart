import 'package:flutter/material.dart';

class GenderEditDropdown extends StatefulWidget {
  @override
  _GenderDropdownState createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderEditDropdown> {
  String selectedGender = 'Male'; 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 350,
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
              color: Colors.white, 
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 2,
            ),
            icon: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
            ),
            items: <String>['Male', 'Female', 'Others']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Container(
                  color:
                      const Color.fromARGB(255, 51, 51, 51), 
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Text(
                    value,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              );
            }).toList(),
            dropdownColor: const Color.fromARGB(255, 51, 51, 51),
            underline: Container(), 
          ),
        ),
      ),
    );
  }
}
