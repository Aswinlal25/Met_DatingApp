// ignore_for_file: deprecated_member_use

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/user_info/iuser_info_screen.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
import 'package:dating_app/domain/modules/profile/profile_model/profile_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lottie/lottie.dart';

import '../../../../business_logic/Profile/profile_bloc.dart';
import '../../../utils/colors.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  ProfileModel profileModel = ProfileModel();

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

  late double? latitude;
  late double? longitudes;

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
          BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state) {
              if (state.dataHasError) {
                showSnack(context: context, message: state.message!);
              } else if (state.profileMakeResponseModel != null) {
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.bottomNavigation, (route) => false);
              }
            },
            builder: (context, state) {
              return BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  if (state.dataIsLoading) {
                    return LoadingAnimation(width: 20);
                  } else {
                    return ElevatedButton(
                      onPressed: () {
                        getCurrentPosition().then((value) async {
                          latitude = value.latitude;
                          longitudes = value.longitude;

                          notifier.value.lattitude = latitude;
                          notifier.value.longitude = longitudes;
                          profileModel = ProfileModel(
                              lattitude: latitude, longitude: longitudes);
                          context
                              .read<ProfileBloc>()
                              .add(ProfileEvent.makeprofile());

                          print(notifier.value.toString());
                          print(
                              '-----------------------Name${notifier.value.name.toString()}');
                          print(
                              '-----------------------Bio${notifier.value.bio.toString()}');
                          print(
                              '-----------------------city${notifier.value.city.toString()}');
                          print(
                              '-----------------------country${notifier.value.country.toString()}');
                          print(
                              '-----------------------dob${notifier.value.dob.toString()}');
                          print(
                              '-----------------------genddr${notifier.value.genderId.toString()}');
                          print(
                              '-----------------------interest${notifier.value.interests.toString()}');
                          print(
                              '----------------------lati${notifier.value.lattitude.toString()}');
                          print(
                              '-----------------------long${notifier.value.longitude.toString()}');
                          print(
                              '-----------------------country${notifier.value.images.toString()}');
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: kred,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(screenSize.width * 0.1),
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
                    );
                  }
                },
              );
            },
          ),
        ]),
      ),
    );
  }
}
