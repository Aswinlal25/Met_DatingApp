// import 'package:dating_app/application/presentation/utils/colors.dart';
// import 'package:flutter/material.dart';

// class ChoiceChips extends StatefulWidget {
//   final String chipname;
//   const ChoiceChips({super.key, required this.chipname});

//   @override
//   State<ChoiceChips> createState() => _ChoiceChipsState();
// }

// class _ChoiceChipsState extends State<ChoiceChips> {
//   var _isSelelcted = false;

//   @override
//   Widget build(BuildContext context) {
//     return FilterChip(
//       label: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
//         child: Text(
//           widget.chipname,
//           style: TextStyle(color: kwhite, letterSpacing: 1.2, fontSize: 15),
//         ),
//       ),
//       selected: _isSelelcted,
//       showCheckmark: false,
//       onSelected: (isSelelcted) {
//         setState(() {
//           _isSelelcted = isSelelcted;
//         });
//       },
//       backgroundColor: const Color.fromARGB(255, 51, 51, 51),
//       selectedColor: kred,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(30.0),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ChoiceChips extends StatefulWidget {
  final String chipLabel;
  final Function(String) onSelected;
  final bool isSelected;

  const ChoiceChips({
    Key? key,
    required this.chipLabel,
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
          style:
              TextStyle(color: Colors.white, letterSpacing: 1.2, fontSize: 15),
        ),
      ),
      selected: widget.isSelected,
      showCheckmark: false,
      onSelected: (isSelected) {
        widget.onSelected(widget.chipLabel);
      },
      backgroundColor: const Color.fromARGB(255, 51, 51, 51),
      selectedColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
