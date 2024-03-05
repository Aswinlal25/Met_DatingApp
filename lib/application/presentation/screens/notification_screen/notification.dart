import 'package:dating_app/application/business_logic/Features/features_bloc.dart';
import 'package:dating_app/application/presentation/screens/notification_screen/widgets/blure_box.dart';
import 'package:dating_app/application/presentation/screens/notification_screen/widgets/liked_prifiles_view.dart';
import 'package:dating_app/application/presentation/screens/notification_screen/widgets/likes_empty_box.dart';
import 'package:dating_app/application/presentation/screens/notification_screen/widgets/profile_box.dart';
import 'package:dating_app/application/presentation/screens/notification_screen/widgets/static.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        title: TitleText(),
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
              return LikesEmptyContainer();
            } else {
              final likes = likesState.data!.likes!;
              bool? isSubscribed = state.getLikes!.data!.isSubscribed;
              bool? isPlan2 = state.getLikes!.data!.seeLike;
              final likescount = likesState.data?.likeCount;
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
                            ? LikeCountText(likescount)
                            : SizedBox(),
                        SizedBox(height: 5),
                        likesState.data!.likes!.isNotEmpty
                            ? likesState.data!.seeLike == false
                                ? PremiumText()
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
                        final name = likes[index].name ?? '';
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
                                    ? ProfileContainer(name: name)
                                    : BlureContainer()),
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
