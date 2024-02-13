// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

List<File?> Editedimages = List.generate(4, (_) => null);

class EditProfilePictureScreen extends StatefulWidget {
  const EditProfilePictureScreen({Key? key}) : super(key: key);

  @override
  _ProfilePictureScreenState createState() => _ProfilePictureScreenState();
}

class _ProfilePictureScreenState extends State<EditProfilePictureScreen> {
  double containerSize = 0.4;
  double iconSize = 0.1;
  late List<String>? initialImg;

  @override
  void initState() {
    initialImg =
        context.read<ProfileBloc>().state.profileDetailsModel!.data!.image;
    super.initState();
  }

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
          'Edit Your Pictures',
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
            BlocConsumer<ProfileBloc, ProfileState>(
              listener: (context, state) {
                if (state.editProfilePictureResponse != null) {
                  Navigator.pop(context);
                }
              },
              builder: (context, state) {
                return BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () async {
                        if (Editedimages.every((element) => element == null)) {
                          showSnack(
                              context: context,
                              message: 'Image is mandatory!',
                              color: kblack);
                        } else {
                          context
                              .read<ProfileBloc>()
                              .add(ProfileEvent.editProfilePicture());
                          if (state.dataHasError) {
                            LoadingAnimation(width: 20);
                          } else {}
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
                              'Save',
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
          image: Editedimages[index] != null
              ? DecorationImage(
                  image: FileImage(Editedimages[index]!),
                  fit: BoxFit.cover,
                )
              : initialImg != null &&
                      initialImg!.isNotEmpty &&
                      initialImg!.length > index
                  ? DecorationImage(
                      image: NetworkImage(initialImg![index]),
                      fit: BoxFit.cover,
                    )
                  : null,
        ),
      ),
    );
  }

  Future<void> _pickImage(int index) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        // Update the image at the specified index
        Editedimages[index] = File(pickedFile.path);

        // Update the initialImg list if it is not null and has enough elements
        if (initialImg != null &&
            initialImg!.isNotEmpty &&
            initialImg!.length > index) {
          initialImg![index] = pickedFile.path;
        }
      }
    });
  }
}
