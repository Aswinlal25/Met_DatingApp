import 'package:dating_app/application/business_logic/Users/users_bloc.dart';
import 'package:dating_app/application/presentation/screens/other_users_Screen/other_users.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 0),
            child: Text(
              'Recommended',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 24,
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'Recommented based on user interest',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 13,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.5,
              ),
            ),
          ),
          BlocBuilder<UsersBloc, UsersState>(
            builder: (context, state) {
              if (state.recommentedModel == null ||
                  state.recommentedModel!.data == null) {
                return Center(
                    child: LoadingAnimation(
                        width:
                            30)); // Show loading indicator if data is not available yet
              }

              return Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 19,
                    mainAxisSpacing: 19,
                    childAspectRatio: 0.75, // Adjust the aspect ratio as needed
                  ),
                  itemCount: state.recommentedModel!.data!.length,
                  itemBuilder: (context, index) {
                    final imagePathList =
                        state.recommentedModel!.data![index].images;
                    final imagePath = imagePathList?.isNotEmpty == true
                        ? imagePathList![0]
                        : ''; // Get the first image path, or use an empty string if the list is empty

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
                                      name ??
                                          '', // Display name, use an empty string as a fallback
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
      ),
    );
  }
}
