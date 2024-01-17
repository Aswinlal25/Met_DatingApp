import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';

class InterersUsersScreen extends StatelessWidget {
  InterersUsersScreen({Key? key});

  final List<String> imagePaths = [
    'assets/users/WhatsApp Image 2024-01-09 at 13.21.48_33697716.jpg',
    'assets/users/WhatsApp Image 2024-01-09 at 13.21.12_4d987ed8.jpg',
    'assets/users/jintu.jpg',
    'assets/users/photo_2023-11-30_12-08-50.jpg',
    'assets/users/jintu.jpg',
    'assets/users/photo_2023-11-30_12-08-50.jpg'
    // Add more image paths here
  ];
  final List<String> namesPaths = [
    'Maria (21)',
    'Jintu (23)',
    'Parvathy (26)',
    'Sandra (25)',
     'Jintu (23)',
   
    'Sandra (25)',
    // Add more image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Most Recommend',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
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
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(imagePaths[index]),
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
                                  '${namesPaths[index]}', // Modify this to display user information
                                  style: TextStyle(
                                    color: kwhite,
                                    fontWeight: FontWeight.w500,
                                  ),
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
          ),
        ],
      ),
    );
  }
}
