import 'package:flutter/material.dart';

class ChoiceChipss extends StatelessWidget {
  final String chipLabel;
  final bool isSelected;
  final Function(int) onSelected; // Change parameter type to int
  final int value; // Change parameter type to int

  const ChoiceChipss({
    Key? key,
    required this.chipLabel,
    required this.isSelected,
    required this.onSelected,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          chipLabel,
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.2,
            fontSize: 15,
          ),
        ),
      ),
      selected: isSelected,
      onSelected: (bool selected) {
        // Convert boolean selection to integer value
        onSelected(value);
      },
      selectedColor: Colors.red,
      backgroundColor: const Color.fromARGB(255, 51, 51, 51),
    );
  }
}
