// import 'package:flutter/material.dart';

// class InputField extends StatelessWidget {
//   const InputField({
//     super.key,
//     required this.send,
//   });

//   final IconData send;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 330,
//       height: 50,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25),
//         color: const Color.fromARGB(255, 39, 39, 39),
//       ),
//       child: Row(
//         children: [
//           SizedBox(
//             width: 20,
//           ),
//           Expanded(
//             child: TextField(
//               keyboardType: TextInputType.multiline,
//               maxLines: null,
//               style: TextStyle(color: Colors.white),
//               decoration: InputDecoration(
//                 hintText: 'Message...',
//                 hintStyle: TextStyle(color: Colors.grey),
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Icon(
//               send,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(
//             width: 10,
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.send,
    required this.onSendPressed,
  }) : super(key: key);

  final IconData send;
  final void Function(String) onSendPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color.fromARGB(255, 39, 39, 39),
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Message...',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                // Get the message from the text field
                String messageContent =
                    ''; // Retrieve message content from text field
                // Call the onSendPressed callback with the message content
                onSendPressed(messageContent);
              },
              child: Icon(
                send,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
