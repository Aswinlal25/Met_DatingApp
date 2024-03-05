import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class MassageBox extends StatelessWidget {
  const MassageBox({
    super.key,
    required this.currentUser,
    required this.senderid,
    required this.massageContent,
    required this.msgselected,
    required this.hours,
    required this.mintes,
  });

  final Object currentUser;
  final Object senderid;
  final String? massageContent;
  final bool msgselected;
  final String hours;
  final String mintes;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: currentUser == senderid
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: currentUser == senderid
                  ? Colors.red
                  : const Color.fromARGB(133, 51, 51, 51),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    massageContent ?? '',
                    style: TextStyle(color: kwhite, fontSize: 16),
                  ),
                  SizedBox(height: 3),
                  msgselected
                      ? Text(
                          "${hours} : ${mintes}",
                          style: TextStyle(color: fkwhite, fontSize: 10),
                        )
                      : SizedBox()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
