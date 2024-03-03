import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class ImageViewScreen extends StatefulWidget {
  final String? picture;
  ImageViewScreen({super.key, required this.picture});

  @override
  State<ImageViewScreen> createState() => _ImageViewScreenState();
}

class _ImageViewScreenState extends State<ImageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(widget.picture!))),
          )
        ],
      ),
    );
  }
}
