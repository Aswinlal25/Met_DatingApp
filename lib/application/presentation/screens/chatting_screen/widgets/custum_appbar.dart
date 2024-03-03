// ignore_for_file: must_be_immutable

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/screens/chatting_screen/widgets/image_view_page.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/domain/modules/chat/chat_users_model/datum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  Datum? chatUsersModel;
  CustomAppBar({super.key, required this.chatUsersModel});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kblack,
      width: double.infinity,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      CupertinoIcons.back,
                      color: kwhite,
                    )),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ImageViewScreen(
                                  picture: widget.chatUsersModel!.user!.image,
                                )));
                  },
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage:
                        NetworkImage(widget.chatUsersModel!.user!.image ?? ''),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  widget.chatUsersModel!.user!.name ?? '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.callingScreen);
                  },
                  child: Icon(
                    CupertinoIcons.phone_fill,
                    color: kwhite,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  CupertinoIcons.videocam_fill,
                  color: kwhite,
                  size: 27,
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
