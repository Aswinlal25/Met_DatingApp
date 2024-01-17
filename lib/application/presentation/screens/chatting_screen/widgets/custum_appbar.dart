import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

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
                CircleAvatar(
                  radius: 22,
                  backgroundImage:
                      AssetImage('assets/users/photo_2023-11-30_14-06-05.jpg'),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Mariam',
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