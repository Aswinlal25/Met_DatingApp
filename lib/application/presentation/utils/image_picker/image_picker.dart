import 'dart:io';

import 'package:dating_app/domain/modules/image/image_model.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class PickImage {
  static Future<List<ImageModel>> getImagesFromGallery(int numberOfImages) async {
    List<ImageModel> imageList = [];

    for (int i = 0; i < numberOfImages; i++) {
      XFile? pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        final fileImage = File(pickedImage.path);
        imageList.add(ImageModel(
          fileImage: fileImage,
          multipartFile: await MultipartFile.fromFile(fileImage.path),
        ));
      }
    }

    return imageList.isNotEmpty ? imageList : [];
  }
}
