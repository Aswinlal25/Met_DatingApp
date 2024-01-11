import 'dart:io';

import 'package:dio/dio.dart';

class ImageModel {
  final File fileImage;
  final MultipartFile multipartFile;

  ImageModel({
    required this.fileImage,
    required this.multipartFile,
  });
}
