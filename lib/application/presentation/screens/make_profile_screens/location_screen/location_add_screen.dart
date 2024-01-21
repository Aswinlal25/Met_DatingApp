// // ignore_for_file: deprecated_member_use
// // import 'package:dating_app/application/presentation/routes/routes.dart';
// import 'package:dating_app/application/presentation/routes/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:lottie/lottie.dart';

// import '../../../utils/colors.dart';

// class LocationScreen extends StatefulWidget {
//   const LocationScreen({super.key});

//   @override
//   State<LocationScreen> createState() => _LocationScreenState();
// }

// class _LocationScreenState extends State<LocationScreen> {
//   //Get current location
//   Future<Position> getCurrentPosition() async {
//     bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       return Future.error('location service is disabled');
//     }

//     LocationPermission permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return Future.error('location permition are denied');
//       }
//     }
//     if (permission == LocationPermission.deniedForever) {
//       return Future.error('location permition is denied permently');
//     }
//     return await Geolocator.getCurrentPosition();
//   }

//   late double latitude;
//   late double longitudes;

//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: kblack,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         automaticallyImplyLeading: false,
//         leading: InkWell(
//             onTap: () => Navigator.pop(context),
//             child: Icon(
//               CupertinoIcons.back,
//               color: kwhite,
//             )),
//         title: Text(
//           'User Location',
//           style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//                 'Find Love Closer Than You Think!\nAdd your location to connect with Soulmates near you\nLet the journey to love begin!',
//                 style: TextStyle(color: Colors.white60, letterSpacing: 0.3)),
//             SizedBox(
//               height: 100,
//             ),
//             Container(
//               width: 300,
//               child: Center(
//                 child: LottieBuilder.asset('assets/animations/location.json',
//                 fit:BoxFit.cover,),
//                 // child: Lottie.network(
//                 //   'https://lottie.host/8d1900aa-2305-4476-a641-4470ce445fad/LkL5pQaURF.json',
//                 //   fit: BoxFit.cover,
//                 // ),
//               ),
//             ),
//             SizedBox(
//               height: 100,

//             ),
//             ElevatedButton(
//               onPressed: () {
//                 getCurrentPosition().then((value) {
//                   setState(() {
//                     latitude = value.latitude;
//                     longitudes = value.longitude;
//                   });
//                   print(latitude.toString());
//                   print(longitudes.toString());
//                   Navigator.pushReplacementNamed(
//                       context, Routes.bottomNavigation);
//                 });
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
//                       'Allow',
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
// ignore_for_file: deprecated_member_use
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/colors.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  //Get current location
  Future<Position> getCurrentPosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('location service is disabled');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('location permission is denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error('location permission is denied permanently');
    }
    return await Geolocator.getCurrentPosition();
  }

  late double latitude;
  late double longitudes;

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    Size screenSize = MediaQuery.of(context).size;

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
          'User Location',
          style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(screenSize.width * 0.05),
        child: Column(children: [
          SizedBox(
            height: screenSize.height * 0.01,
          ),
          Text(
            'Find Love Closer Than You Think!\nAdd your location to connect with Soulmates near you\nLet the journey to love begin!',
            style: TextStyle(color: Colors.white60, letterSpacing: 0.3),
          ),
          SizedBox(
            height: screenSize.height * 0.1,
          ),
          Container(
            width: screenSize.width * 0.75,
            // height: screenSize.height * 0.4,
            child: Center(
              child: LottieBuilder.asset(
                'assets/animations/location.json',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.22,
          ),
          ElevatedButton(
            onPressed: () {
              getCurrentPosition().then((value) {
                setState(() {
                  latitude = value.latitude;
                  longitudes = value.longitude;
                });
                print(latitude.toString());
                print(longitudes.toString());
                Navigator.pushReplacementNamed(
                    context, Routes.bottomNavigation);
              });
            },
            style: ElevatedButton.styleFrom(
              primary: kred,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenSize.width * 0.1),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenSize.width * 0.03),
              child: SizedBox(
                height: screenSize.height * 0.045,
                width: screenSize.width * 0.75,
                child: Center(
                  child: Text(
                    'Allow',
                    style: TextStyle(
                      fontSize: screenSize.width * 0.04,
                      color: kwhite,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
