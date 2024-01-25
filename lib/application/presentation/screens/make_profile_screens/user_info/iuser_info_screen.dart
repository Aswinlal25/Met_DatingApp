// ignore_for_file: deprecated_member_use
import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/user_info/widgets/dropdown_button.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:dating_app/application/presentation/utils/show_snackbar/snackbar.dart';
import 'package:dating_app/domain/modules/profile/profile_model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

ValueNotifier<ProfileModel> notifier = ValueNotifier(ProfileModel());

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

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
          'Personal information',
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
                        controller: context.read<ProfileBloc>().nameController,
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
                        controller: context.read<ProfileBloc>().bioController,
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
                            controller:
                                context.read<ProfileBloc>().countryController,
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
                            controller:
                                context.read<ProfileBloc>().cityContoller,
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
                      'Gender',
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
                  GenderDropdown(),
                  SizedBox(
                    height: screenSize.height * 0.19,
                  ),
                  Center(
                    child: BlocBuilder<ProfileBloc, ProfileState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: () async {
                            print(context
                                .read<ProfileBloc>()
                                .cityContoller
                                .text
                                .toString());
                            if (context
                                .read<ProfileBloc>()
                                .infokey
                                .currentState!
                                .validate()) {
                              notifier.value.name = context
                                  .read<ProfileBloc>()
                                  .nameController
                                  .text;
                              notifier.value.bio = context
                                  .read<ProfileBloc>()
                                  .bioController
                                  .text;
                              notifier.value.city = context
                                  .read<ProfileBloc>()
                                  .cityContoller
                                  .text;
                              notifier.value.country = context
                                  .read<ProfileBloc>()
                                  .countryController
                                  .text;

                              if (state.dataIsLoading) {
                                LoadingAnimation(width: 20);
                              } else {
                                Navigator.pushNamed(context, Routes.userDOB);
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
