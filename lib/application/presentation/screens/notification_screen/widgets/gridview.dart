import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 100.0, // Adjust the width as needed
          height: 100.0, // Adjust the height as needed
          color: Colors.blueAccent,
          child: Center(
            child: Text('Item $index'),
          ),
        );
      },
    );
  }
}
