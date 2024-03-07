import 'package:dating_app/application/business_logic/Users/users_bloc.dart';
// import 'package:dating_app/application/presentation/screens/home_screen/widgets/home_other_users.dart';
import 'package:dating_app/application/presentation/screens/interest/widgets/mainpart.dart';
// import 'package:dating_app/application/presentation/screens/other_users_Screen/other_users.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
// import 'package:dating_app/application/presentation/utils/constant.dart';
// import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:google_fonts/google_fonts.dart';

class InterersUsersScreen extends StatefulWidget {
  InterersUsersScreen({Key? key});

  @override
  State<InterersUsersScreen> createState() => _InterersUsersScreenState();
}

class _InterersUsersScreenState extends State<InterersUsersScreen> {
  @override
  void initState() {
    context.read<UsersBloc>().add(UsersEvent.getRecommentdata());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: MainPart(),
    );
  }
}
