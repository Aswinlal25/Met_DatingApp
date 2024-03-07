import 'package:dating_app/application/presentation/screens/home_screen/widgets/home_main_part.dart';
// import 'package:dating_app/domain/modules/home_response/datum.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dating_app/application/business_logic/Users/users_bloc.dart';
// import 'package:dating_app/application/presentation/screens/home_screen/widgets/home_other_users.dart';
// import 'package:dating_app/application/presentation/screens/home_screen/widgets/like_buttom.dart';
// import 'package:dating_app/application/presentation/screens/home_screen/widgets/like_button2.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
// import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int _currentPageIndex = 0;
  late UsersState _currentState; // Define a variable to store the current state

  @override
  void initState() {
    _pageController = PageController();
    context.read<UsersBloc>().add(UsersEvent.gethomedata());
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void navigateToNextPage(BuildContext context) {
    final nextPageIndex = _currentPageIndex + 1;
    if (_currentState.homeResponse != null &&
        _currentState.homeResponse!.data != null &&
        nextPageIndex < _currentState.homeResponse!.data!.length) {
      _pageController.animateToPage(
        nextPageIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: BlocConsumer<UsersBloc, UsersState>(
        listener: (context, state) {},
        builder: (context, state) {
          _currentState = state;
          if (state.homedataisLoading) {
            return LoadingAnimation(width: 20);
          } else {
            return PageView.builder(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              scrollDirection: Axis.vertical,
              itemCount: state.homeResponse?.data?.length,
              itemBuilder: (context, index) {
                final homeResponse = state.homeResponse;
                if (homeResponse != null &&
                    homeResponse.data != null &&
                    homeResponse.data!.isNotEmpty) {
                  final image = homeResponse.data![index].images;
                  final name = homeResponse.data![index].name ?? '';
                  final age = homeResponse.data![index].age ?? '';
                  final city = homeResponse.data![index].city ?? '';
                  final country = homeResponse.data![index].country ?? '';
                  final bio = homeResponse.data![index].bio ?? '';
                  final users = homeResponse.data![index];
                  final id = homeResponse.data![index].id;
                  return HomeContents(
                      image: image,
                      name: name,
                      age: age,
                      users: users,
                      city: city,
                      country: country,
                      bio: bio,
                      id: id);
                } else {
                  return Center(child: LoadingAnimation(width: 0));
                }
              },
            );
          }
        },
      ),
    );
  }
}
