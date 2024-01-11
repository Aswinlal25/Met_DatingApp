// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePictureScreen extends StatelessWidget {
  const ProfilePictureScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            )),
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
                    style: TextStyle(color: Colors.white60))),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                      // border: Border.all(
                      //     color: const Color.fromARGB(255, 84, 77, 77),
                      //     width: 2.0),
                      color: const Color.fromARGB(255, 51, 51, 51),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    CupertinoIcons.add,
                    size: 40,
                    color: kgrey,
                  ),
                ),
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                      // border: Border.all(
                      //     color: const Color.fromARGB(255, 84, 77, 77),
                      //     width: 2.0),
                      color: const Color.fromARGB(255, 51, 51, 51),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    CupertinoIcons.add,
                    size: 40,
                    color: kgrey,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                      // border: Border.all(
                      //     color: const Color.fromARGB(255, 84, 77, 77),
                      //     width: 2.0),
                      color: const Color.fromARGB(255, 51, 51, 51),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    CupertinoIcons.add,
                    size: 40,
                    color: kgrey,
                  ),
                ),
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                      // border: Border.all(
                      //     color: const Color.fromARGB(255, 84, 77, 77),
                      //     width: 2.0),
                      color: const Color.fromARGB(255, 51, 51, 51),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    CupertinoIcons.add,
                    size: 40,
                    color: kgrey,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 175,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.userInterest);
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
                  height: 37,
                  width: 280,
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: kwhite,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:dating_app/application/presentation/routes/routes.dart';
// import 'package:dating_app/application/presentation/utils/colors.dart';
// import 'package:dating_app/application/presentation/utils/image_picker/image_picker.dart';
// import 'package:dating_app/domain/modules/image/image_model.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class ProfilePictureScreen extends StatefulWidget {
//   const ProfilePictureScreen({Key? key}) : super(key: key);

//   @override
//   _ProfilePictureScreenState createState() => _ProfilePictureScreenState();
// }

// class _ProfilePictureScreenState extends State<ProfilePictureScreen> {
//   List<ImageModel?> images = List.filled(4, null);

//   Future<void> _getImages() async {
//     try {
//       List<ImageModel?> selectedImages = await PickImage.getImagesFromGallery(4);
//       if (selectedImages.isNotEmpty) {
//         setState(() {
//           images = selectedImages;
//         });
//       }
//     } catch (e) {
//       // Handle any errors that might occur during image selection
//       print("Error getting images: $e");
//     }
//   }

//   Future<List<Widget>> _buildImageWidgets() async {
//     List<Widget> imageWidgets = [];
//     for (int index = 0; index < 4; index++) {
//       imageWidgets.add(
//         GestureDetector(
//           onTap: _getImages,
//           child: Container(
//             width: 160,
//             height: 160,
//             decoration: BoxDecoration(
//               color: const Color.fromARGB(255, 51, 51, 51),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: images[index] != null
//                 ? Image.file(
//                     images[index]!.fileImage,
//                     fit: BoxFit.cover,
//                   )
//                 : Icon(
//                     CupertinoIcons.add,
//                     size: 40,
//                     color: kgrey,
//                   ),
//           ),
//         ),
//       );
//     }
//     return imageWidgets;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kblack,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         automaticallyImplyLeading: false,
//         leading: InkWell(
//           onTap: () => Navigator.pop(context),
//           child: Icon(
//             CupertinoIcons.back,
//             color: kwhite,
//           ),
//         ),
//         title: Text(
//           'Add Your Pictures',
//           style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             Align(
//               alignment: Alignment.bottomLeft,
//               child: Text(
//                 '+ Must Upload 4 photos\n+ Pictures with minors is a big no\n+ Stay clear of inappropriate content\n+ Avoid blurry pictures',
//                 style: TextStyle(color: Colors.white60),
//               ),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             // Display the images using FutureBuilder
//             FutureBuilder<List<Widget>>(
//               future: _buildImageWidgets(),
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   return Wrap(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: snapshot.data ?? [],
//                       ),
//                     ],
//                   );
//                 } else {
//                   return CircularProgressIndicator();
//                 }
//               },
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // ... existing code
//               ],
//             ),
//             SizedBox(
//               height: 175,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, Routes.userInterest);
//               },
//               style: ElevatedButton.styleFrom(
//                 primary: kred,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: SizedBox(
//                   height: 37,
//                   width: 280,
//                   child: Center(
//                     child: Text(
//                       'Next',
//                       style: TextStyle(
//                         fontSize: 16.0,
//                         color: kwhite,
//                         //fontWeight: FontWeight.bold
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
