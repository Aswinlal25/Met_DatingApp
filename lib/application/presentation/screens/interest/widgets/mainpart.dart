import 'package:dating_app/application/business_logic/Users/users_bloc.dart';
import 'package:dating_app/application/presentation/screens/home_screen/widgets/home_other_users.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/other_users.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPart extends StatelessWidget {
  const MainPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 0),
          child: Text(
            'Recommended',
            style: InterestPagetitleStyle(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            'Recommented based on your interest',
            style: InterestPageSubtittleStyle(),
          ),
        ),
        BlocConsumer<UsersBloc, UsersState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state.homedataisLoading) {
              // Show loading indicator if data is loading
              return Container(
                height: 600,
                width: double.infinity,
                child: Align(
                    alignment: Alignment.center,
                    child: LoadingAnimation(width: 20)),
              );
            } else if (state.recommentedModel?.data == null ||
                state.recommentedModel!.data!.isEmpty) {
              return Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 19,
                    mainAxisSpacing: 19,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: state.homeResponse!.data!.length,
                  itemBuilder: (context, index) {
                    final imagePathList =
                        state.homeResponse!.data![index].images;
                    final imagePath = imagePathList?.isNotEmpty == true
                        ? imagePathList![0]
                        : '';
                    final name = state.homeResponse!.data![index].name;

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          final homeResponse = context
                              .read<UsersBloc>()
                              .state
                              .homeResponse!
                              .data![index];
                          return HomeOtherUsers(
                            homeuser: homeResponse,
                          );
                        }));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(imagePath),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 22, 22, 22),
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black.withOpacity(0.4),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Text(
                                      name ?? '',
                                      style: TextStyle(
                                          color: kwhite,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }

            return Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 19,
                  mainAxisSpacing: 19,
                  childAspectRatio: 0.75,
                ),
                itemCount: state.recommentedModel!.data!.length,
                itemBuilder: (context, index) {
                  final imagePathList =
                      state.recommentedModel!.data![index].images;
                  final imagePath = imagePathList?.isNotEmpty == true
                      ? imagePathList![0]
                      : '';

                  final name = state.recommentedModel!.data![index].name;

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        final recommentedModel = context
                            .read<UsersBloc>()
                            .state
                            .recommentedModel!
                            .data![index];
                        return OtherUsersScreen(user: recommentedModel);
                      }));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(imagePath),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 22, 22, 22),
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black.withOpacity(0.4),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 20),
                                  Text(
                                    name ?? '',
                                    style: TextStyle(
                                        color: kwhite,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
