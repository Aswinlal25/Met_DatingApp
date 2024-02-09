import 'package:dating_app/application/business_logic/Users/users_bloc.dart';
import 'package:dating_app/application/presentation/screens/home_screen/widgets/home_other_users.dart';
import 'package:dating_app/application/presentation/screens/home_screen/widgets/like_buttom.dart';
import 'package:dating_app/application/presentation/screens/home_screen/widgets/like_button2.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/other_users.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<UsersBloc>().add(UsersEvent.gethomedata());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: BlocConsumer<UsersBloc, UsersState>(
        listener: (context, state) {},
        builder: (context, state) {
          return PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: state.homeResponse?.data?.length,
            itemBuilder: (context, index) {
              final image = state.homeResponse!.data![index].images;
              final name = state.homeResponse!.data![index].name;
              final age = state.homeResponse!.data![index].age;
              final city = state.homeResponse!.data![index].city;
              final country = state.homeResponse!.data![index].country;
              final bio = state.homeResponse!.data![index].bio;
              final users = state.homeResponse!.data![index];
              return Column(
                children: [
                  Stack(
                    children: [
                      GestureDetector(
                        // onHorizontalDragEnd: (details) {
                        //   showTimedDialog(context);
                        // },
                        // onVerticalDragEnd: (details) {
                        //   if (details.primaryVelocity! < 0) {
                        //     Navigator.pushNamed(context, Routes.otherUsersScreen);
                        //     print('Swipe up detected!');
                        //   }
                        // },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(image != null
                                  ? image[0]
                                  : 'https://i.pinimg.com/564x/81/8a/1b/818a1b89a57c2ee0fb7619b95e11aebd.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 600,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                  Colors.black,
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.1),
                                ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter)),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 125,
                          left: 25,
                          child: Text(
                            '$name ($age)',
                            style: TextStyle(
                                color: kwhite,
                                fontWeight: FontWeight.w500,
                                fontSize: 23),
                          )),
                      Positioned(
                          bottom: 120,
                          right: 30,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      HomeOtherUsers(homeuser: users),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    const begin = Offset(0.0,
                                        1.0); // Change the Y-axis value to start from the bottom
                                    const end = Offset.zero;
                                    const curve = Curves.easeInOut;

                                    var tween = Tween(begin: begin, end: end)
                                        .chain(CurveTween(curve: curve));
                                    var offsetAnimation =
                                        animation.drive(tween);

                                    return SlideTransition(
                                      position: offsetAnimation,
                                      child: child,
                                    );
                                  },
                                ),
                              );
                            },
                            child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent),
                                child: Icon(
                                  CupertinoIcons.arrow_up,
                                  size: 30,
                                  color: kwhite,
                                )),
                          )),
                      Positioned(
                          bottom: 105,
                          left: 23,
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.location_solid,
                                color: kwhite,
                                size: 17,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '$city , $country',
                                style: TextStyle(
                                    color: kwhite,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ],
                          )),
                      Positioned(
                        bottom: 30,
                        left: 25,
                        // child: Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     Row(
                        //       children: [
                        //         InterestsBox(
                        //           chipName: 'photography',
                        //         ),
                        //         InterestsBox(
                        //           chipName: 'Reading',
                        //         ),
                        //         InterestsBox(
                        //           chipName: 'Cooking and Food',
                        //         ),
                        //       ],
                        //     ),
                        //     Row(
                        //       children: [
                        //         InterestsBox(
                        //           chipName: 'Movies and TV shows',
                        //         ),
                        //         InterestsBox(
                        //           chipName: 'Pet',
                        //         ),
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        child: Flexible(
                          child: Container(
                            width: 340,
                            height: 60,
                            child: Text(
                              "$bio",
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w300,
                                fontSize: 13,
                              ),
                              // Set softWrap to true to allow text wrapping
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HeartButton(
                            icon: Icons.close,
                            iconColor: kgrey,
                          ),
                          HeartButton(
                            icon: CupertinoIcons.heart_fill,
                            iconColor: Colors.black,
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 10,
                        right: 78,
                        child: LikeButtonWithHeart(),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  void showTimedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: AlertDialog(
              backgroundColor: Colors.transparent,
              content: LottieBuilder.asset('assets/animations/love.json')),
        );
      },
    );

    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).pop();
    });
  }
}
