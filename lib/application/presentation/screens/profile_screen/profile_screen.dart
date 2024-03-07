// ignore_for_file: must_be_immutable
import 'package:dating_app/application/business_logic/Features/features_bloc.dart';
import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
// import 'package:dating_app/application/presentation/routes/routes.dart';
// import 'package:dating_app/application/presentation/screens/common_widgets/drawer.dart';
// import 'package:dating_app/application/presentation/screens/edit_profile_screen/edit_interest.dart';
import 'package:dating_app/application/presentation/screens/profile_screen/widgets/options_list.dart';
// import 'package:dating_app/application/presentation/screens/edit_profile_screen/edited_profile.dart';
// import 'package:dating_app/application/presentation/screens/profile_screen/widgets/premium_card.dart';
// import 'package:dating_app/application/presentation/screens/profile_screen/widgets/user_details_view.dart';
// import 'package:dating_app/application/presentation/screens/profile_screen/widgets/user_picture.dart';
// import 'package:dating_app/application/presentation/screens/settings/settings_screen.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
// import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/domain/modules/profile/profile_details_model/profile_details_model.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileDetailsModel profileDetailsModel = ProfileDetailsModel();

  @override
  void initState() {
    super.initState();

    context.read<ProfileBloc>().add(ProfileEvent.getprofileDetails());
    context.read<FeaturesBloc>().add(FeaturesEvent.getLikes());
  }

  static const IconData edit_sharp =
      IconData(0xe91c, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: OptionsList(edit_sharp: edit_sharp),
    );
  }
}
