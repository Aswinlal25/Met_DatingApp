// ignore_for_file: deprecated_member_use
import 'package:dating_app/application/business_logic/Auth/auth_bloc.dart';
import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
import 'package:dating_app/domain/modules/phone_number_model/phone_number_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController bioController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController numberController = TextEditingController();
  GlobalKey editkey = GlobalKey();
  PhoneNumberModel phoneNumberModel = PhoneNumberModel();

  @override
  void initState() {
    context.read<ProfileBloc>().add(ProfileEvent.getprofileDetails());
    nameController.text = context
        .read<ProfileBloc>()
        .state
        .profileDetailsModel!
        .data!
        .userDetails!
        .name!;
    bioController.text = context
        .read<ProfileBloc>()
        .state
        .profileDetailsModel!
        .data!
        .userDetails!
        .bio!;
    countryController.text = context
        .read<ProfileBloc>()
        .state
        .profileDetailsModel!
        .data!
        .userDetails!
        .country!;
    cityController.text = context
        .read<ProfileBloc>()
        .state
        .profileDetailsModel!
        .data!
        .userDetails!
        .city!;
    print(phoneNumberModel.phNo);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kblack,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              CupertinoIcons.back,
              color: kwhite,
            )),
        title: Text(
          'Edit Profile',
          style: TextStyle(color: kwhite, letterSpacing: 1, fontSize: 21),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(screenSize.width * 0.04),
            child: Form(
              key: context.read<ProfileBloc>().infokey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenSize.width * 0.04),
                    child: Text(
                      'You can change your Name ,bio ,country ,city and mobile Number',
                      style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenSize.width * 0.04),
                    child: Text(
                      'Name',
                      style: TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  Container(
                    height: screenSize.height * 0.07,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 51, 51, 51),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: screenSize.width * 0.02),
                      child: TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.w400,
                            fontSize: screenSize.width * 0.03,
                          ),
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.all(screenSize.width * 0.02),
                          enabledBorder: InputBorder.none,
                        ),
                        validator: (value) {
                          if (value == null)
                            showSnack(
                                context: context,
                                message: 'Please fill in all fields',
                                color: kblack);
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenSize.width * 0.04),
                    child: Text(
                      'Describe yourself',
                      style: TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  Container(
                    height: screenSize.height * 0.16,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 51, 51, 51),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: screenSize.width * 0.02),
                      child: TextFormField(
                        controller: bioController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null, // Set to null for unlimited lines
                        style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Bio',
                          hintStyle: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.w400,
                            fontSize: screenSize.width * 0.03,
                          ),
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.all(screenSize.width * 0.02),
                        ),
                        validator: (value) {
                          if (value == null)
                            showSnack(
                                context: context,
                                message: 'Please fill in all fields',
                                color: kblack);
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: screenSize.width * 0.04),
                        child: Text(
                          'Country',
                          style: TextStyle(
                            color: kwhite,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenSize.width * 0.1),
                        child: Text(
                          'City',
                          style: TextStyle(
                            color: kwhite,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.01,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: screenSize.height * 0.07,
                        width: screenSize.width * 0.42,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 51, 51, 51),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: screenSize.width * 0.02),
                          child: TextFormField(
                            controller: countryController,
                            keyboardType: TextInputType.name,
                            style: TextStyle(
                              color: kwhite,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Country',
                              hintStyle: TextStyle(
                                color: Colors.white38,
                                fontWeight: FontWeight.w400,
                                fontSize: screenSize.width * 0.03,
                              ),
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.all(screenSize.width * 0.02),
                            ),
                            validator: (value) {
                              if (value == null)
                                showSnack(
                                    context: context,
                                    message: 'Please fill in all fields',
                                    color: kblack);
                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: screenSize.height * 0.07,
                        width: screenSize.width * 0.42,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 51, 51, 51),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: screenSize.width * 0.02),
                          child: TextFormField(
                            controller: cityController,
                            keyboardType: TextInputType.name,
                            style: TextStyle(
                              color: kwhite,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2,
                            ),
                            decoration: InputDecoration(
                              hintText: 'City',
                              hintStyle: TextStyle(
                                color: Colors.white38,
                                fontWeight: FontWeight.w400,
                                fontSize: screenSize.width * 0.03,
                              ),
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.all(screenSize.width * 0.02),
                            ),
                            validator: (value) {
                              if (value == null)
                                showSnack(
                                    context: context,
                                    message: 'Please fill in all fields',
                                    color: kblack);
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenSize.width * 0.04),
                    child: Text(
                      'Mobile Number',
                      style: TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  Container(
                    height: screenSize.height * 0.07,
                    // width: screenSize.width * 0.42,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 51, 51, 51),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: screenSize.width * 0.02),
                      child: TextFormField(
                        controller: context.read<ProfileBloc>().cityContoller,
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                          color: kwhite,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Mobile Number',
                          hintStyle: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.w400,
                            fontSize: screenSize.width * 0.03,
                          ),
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.all(screenSize.width * 0.02),
                        ),
                        validator: (value) {
                          if (value == null)
                            showSnack(
                                context: context,
                                message: 'Please fill in all fields',
                                color: kblack);
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.15,
                  ),
                  Center(
                    child: BlocBuilder<ProfileBloc, ProfileState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: () async {},
                          style: ElevatedButton.styleFrom(
                            primary: kred,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              height: screenSize.height * 0.045,
                              width: screenSize.width * 0.75,
                              child: Center(
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    fontSize: screenSize.width * 0.04,
                                    color: kwhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
