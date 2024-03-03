import 'dart:ui';
import 'package:dating_app/application/business_logic/Features/features_bloc.dart';
import 'package:dating_app/application/presentation/screens/notification_screen/widgets/liked_prifiles_view.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<String>? imageUrls = [];

  @override
  void initState() {
    context.read<FeaturesBloc>().add(FeaturesEvent.getLikes());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      appBar: AppBar(
        backgroundColor: kblack,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            CupertinoIcons.back,
            color: kwhite,
          ),
        ),
        title: Text(
          'Likes',
          style: TextStyle(
            color: kwhite,
            fontSize: 24,
            fontWeight: FontWeight.w800,
            letterSpacing: 1,
          ),
        ),
      ),
      body: BlocConsumer<FeaturesBloc, FeaturesState>(
          listener: (context, state) {},
          builder: (context, state) {
            final likesState = context.watch<FeaturesBloc>().state.getLikes;

            //final likes = state.getLikes.data;

            // Check if likesState is null or if likes data is null
            if (likesState == null ||
                likesState.data == null ||
                likesState.data!.likeCount == 0) {
              return Container(
                height: 700,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 160,
                        child: LottieBuilder.asset(
                          'assets/animations/nRrkDCahyG.json',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        'No likes available',
                        style: TextStyle(
                          color: kwhite,
                          fontSize: 17,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              final likes = likesState.data!.likes!;
              bool? isSubscribed = state.getLikes!.data!.isSubscribed;
              bool? isPlan2 = state.getLikes!.data!.seeLike;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        likesState.data!.likes != null
                            ? Text(
                                'Your profile liked by ${likesState.data?.likeCount} peoples',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                              )
                            : SizedBox(),
                        SizedBox(height: 5),
                        likesState.data!.likes!.isNotEmpty
                            ? likesState.data!.seeLike == false
                                ? Text(
                                    'Get the Premium to see their profiles',
                                    style: TextStyle(
                                      color: kwhite,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w200,
                                      letterSpacing: 1,
                                    ),
                                  )
                                : SizedBox()
                            : SizedBox()
                      ],
                    ),
                  ),
                  kheight10,
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.all(8.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 19,
                        mainAxisSpacing: 19,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: likes.length,
                      itemBuilder: (context, index) {
                        List<String>? imageUrls =
                            likesState.data?.likes![index].image!.split(", ");
                        return GestureDetector(
                          onTap: () {
                            if (isSubscribed! && isPlan2!) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LikedUsersProfileView(
                                          likedUsers: likes[index])));
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(
                                  imageUrls?.first ??
                                      'assets/images/palce_holder_images/PlaceHolder.jpg',
                                ),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: isSubscribed != null &&
                                        isSubscribed &&
                                        isSubscribed &&
                                        isPlan2!
                                    ? Container(
                                        decoration: BoxDecoration(
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 10),
                                            ],
                                          ),
                                        ),
                                      )
                                    : BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 6.0,
                                          sigmaY: 6.0,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SizedBox(height: 10),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                          ),
                        );
                      },
                    ),
                  )
                ],
              );
            }
          }),
    );
  }
}
