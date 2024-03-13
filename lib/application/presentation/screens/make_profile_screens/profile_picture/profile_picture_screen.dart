// ignore_for_file: deprecated_member_use
import 'dart:io';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../business_logic/Profile/profile_bloc.dart';
import '../../../utils/show_snackbar/snackbar.dart';

List<File?> images = List.generate(4, (_) => null);

class ProfilePictureScreen extends StatefulWidget {
  const ProfilePictureScreen({Key? key}) : super(key: key);

  @override
  _ProfilePictureScreenState createState() => _ProfilePictureScreenState();
}

class _ProfilePictureScreenState extends State<ProfilePictureScreen> {
  double containerSize = 0.4;
  double iconSize = 0.1;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            CupertinoIcons.back,
            color: kwhite,
          ),
        ),
        title: Text(
          'Add Your Pictures',
          style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '+ Must Upload 4 photos\n+ Pictures with minors is a big no\n+ Stay clear of inappropriate content\n+ Avoid blurry pictures',
                style: TextStyle(color: Colors.white60, letterSpacing: 0.8),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildImageContainer(0, screenWidth, screenHeight),
                buildImageContainer(1, screenWidth, screenHeight),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildImageContainer(2, screenWidth, screenHeight),
                buildImageContainer(3, screenWidth, screenHeight),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.209,
            ),
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () async {
                    if (images.every((element) => element == null)) {
                      showSnack(
                          context: context,
                          message: 'Image is mandatory!',
                          color: kblack);
                    } else {
                      if (state.dataIsLoading) {
                        LoadingAnimation(width: 20);
                      } else {
                        Navigator.pushNamed(context, Routes.userInterest);
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: kred,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: screenHeight * 0.045,
                      width: screenWidth * 0.75,
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: kwhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageContainer(
      int index, double screenWidth, double screenHeight) {
    return GestureDetector(
      onTap: () => _pickImage(index),
      child: Container(
        width: screenWidth * containerSize,
        height: screenWidth * containerSize,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white30,
            width: 2,
          ),
          color: const Color.fromARGB(255, 51, 51, 51),
          borderRadius: BorderRadius.circular(20),
          image: images[index] != null
              ? DecorationImage(
                  image: FileImage(images[index]!),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: images[index] == null
            ? Icon(
                CupertinoIcons.add,
                size: screenWidth * iconSize,
                color: kgrey,
              )
            : null,
      ),
    );
  }

  Future<void> _pickImage(int index) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        images[index] = File(pickedFile.path);
      }
    });
  }
}
