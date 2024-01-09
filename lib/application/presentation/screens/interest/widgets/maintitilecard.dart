import 'package:dating_app/application/presentation/screens/interest/widgets/maincard.dart';
import 'package:dating_app/application/presentation/screens/interest/widgets/maintitle.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';


class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.titletext,
    required this.users,
  });

  final String titletext;
  final String users;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 10,),
      MainTitle(title: titletext),
            SizedBox(height: 10,),

      LimitedBox(
        maxHeight: 240,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
              users.length,
              (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Stack(
                      children: [
                        MainCard(image: users),
                        Positioned(bottom: 10,left: 20,
                          child: Text('Jintu james',style: TextStyle(color: kwhite,fontWeight: FontWeight.w500,fontSize: 15),))
                      ],
                    ),
                  )),
        ),
      ),
    ]);
  }
}
