import 'dart:ui';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your profile liked by 3 peoples',
                  style: TextStyle(
                    color: kwhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Get the Premium to see their profiles',
                  style: TextStyle(
                    color: kwhite,
                    fontSize: 13,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 19,
                mainAxisSpacing: 19,
                childAspectRatio: 0.75, // Adjust the aspect ratio as needed
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/users/WhatsApp Image 2024-01-09 at 13.21.12_4d987ed8.jpg',
                        ), // Replace with your image asset path
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                            sigmaX: 6.0,
                            sigmaY: 6.0), // Adjust blur intensity as needed
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
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // Row(
                                //   children: [
                                //     SizedBox(width: 20),
                                //     Text(
                                //       'Parvathy (24)',
                                //       style: TextStyle(
                                //         color: Colors.white60,
                                //         fontWeight: FontWeight.w500,
                                //       ),
                                //     ),
                                //   ],
                                // ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
