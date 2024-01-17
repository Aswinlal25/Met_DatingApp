import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.send,
  });

  final IconData send;

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
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextField(
                keyboardType: TextInputType.multiline,
                      maxLines: null,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Message...',
                hintStyle:
                    TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              send,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}