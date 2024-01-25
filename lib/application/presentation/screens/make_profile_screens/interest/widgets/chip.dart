import 'package:flutter/material.dart';

class ChoiceChips extends StatefulWidget {
  final String chipLabel;
  final Function(String) onSelected;
  final bool isSelected;
  final String value;

  const ChoiceChips({
    Key? key,
    required this.chipLabel,
    required this.value,
    required this.onSelected,
    required this.isSelected,
  }) : super(key: key);

  @override
  _ChoiceChipsState createState() => _ChoiceChipsState();
}

class _ChoiceChipsState extends State<ChoiceChips> {
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        child: Text(
          widget.chipLabel,
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.2,
            fontSize: 15,
          ),
        ),
      ),
      selected: widget.isSelected,
      showCheckmark: false,
      onSelected: (isSelected) {
        widget.onSelected(widget.value);
      },
      backgroundColor: widget.isSelected
          ? Colors.red
          : const Color.fromARGB(255, 51, 51, 51),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
