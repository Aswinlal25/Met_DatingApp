import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class ChoiceChips extends StatefulWidget {
  final String chipname;
  const ChoiceChips({super.key, required this.chipname});

  @override
  State<ChoiceChips> createState() => _ChoiceChipsState();
}

class _ChoiceChipsState extends State<ChoiceChips> {
  var _isSelelcted = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        child: Text(
          widget.chipname,
          style: TextStyle(color: kwhite, letterSpacing: 1.2, fontSize: 15),
        ),
      ),
      selected: _isSelelcted,
      showCheckmark: false,
      onSelected: (isSelelcted) {
        setState(() {
          _isSelelcted = isSelelcted;
        });
      },
      backgroundColor: const Color.fromARGB(255, 51, 51, 51),
      selectedColor: kred,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
