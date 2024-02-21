// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';

class PremiumScreen extends StatefulWidget {
  PremiumScreen({Key? key}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  List<String>? plan1 = [
    'Unlimited Like',
    '1 Month Validity',
    'Price Rs.699',
    'More chances for matches',
  ];
  List<String>? plan2 = [
    'Unlimited Like',
    '2 Month Validity',
    'Price Rs.999',
    'More chances for matches',
    'See Liked Profiles',
  ];
  int selectedCardIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: kblack,
          appBar: AppBar(
            backgroundColor: kblack,
            automaticallyImplyLeading: false,
            actions: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.close,
                      color: kwhite,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Stack(
              children: [
                Column(
                  children: [
                    Text(
                      'Unlimited Likes,Send as many likes as you want',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.2,
                          wordSpacing: 2),
                    ),
                    kheight20,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Select a plan',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    kheight10,
                    Row(
                      children: [
                        SubscriptionCard(
                          planName: 'GOLD',
                          price: 'Rs.699/mo',
                          gradientColors: [
                            const Color.fromARGB(255, 255, 191, 0),
                            Color.fromARGB(168, 255, 111, 0),
                            const Color.fromARGB(255, 255, 191, 0),
                            Color.fromARGB(168, 255, 111, 0),
                          ],
                          isSelected: selectedCardIndex == 0,
                          onTap: () {
                            selectCard(0);
                          },
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        SubscriptionCard(
                          planName: 'PLATINUM',
                          price: 'Rs.999/mo',
                          gradientColors: [
                            const Color.fromARGB(255, 255, 191, 0),
                            Color.fromARGB(224, 255, 111, 0),
                          ],
                          isSelected: selectedCardIndex == 1,
                          onTap: () {
                            selectCard(1);
                          },
                        ),
                      ],
                    ),
                    kheight20,
                    Container(
                      height: 332,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(148, 54, 54, 54),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: ListView.builder(
                          itemCount: selectedCardIndex == 0
                              ? plan1!.length
                              : plan2!.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Icon(Icons.check, color: Colors.green
                                  // kblack56,
                                  ),
                              title: Text(
                                selectedCardIndex == 0
                                    ? plan1![index]
                                    : plan2![index],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white60,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    kheight10,
                    ElevatedButton(
                      onPressed: () async {},
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(205, 244, 67, 54),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 35,
                          width: 300,
                          child: Center(
                            child: selectedCardIndex == 0
                                ? Text(
                                    'Continue with GOLD',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: kwhite,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Text(
                                    'Continue with PLATINUM',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: kwhite,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 323,
                  left: 30,
                  child: Container(
                    height: 22,
                    width: 170,
                    decoration: BoxDecoration(
                      color: kblack,
                      border: Border.all(
                        color: Color.fromARGB(148, 54, 54, 54),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 2),
                      child: Text(
                        'Details about the plan',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          height: 35,
          top: 35,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: LogoContainer(),
          ),
        ),
      ],
    );
  }

  Container LogoContainer() {
    return Container(
      width: 80,
      height: 55,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:
              AssetImage('assets/icons/Met_logo_black1-removebg-preview.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  void selectCard(int index) {
    setState(() {
      selectedCardIndex = index;
    });
  }
}

class SubscriptionCard extends StatelessWidget {
  final String planName;
  final String price;
  final List<Color> gradientColors;
  final bool isSelected;
  final VoidCallback onTap;

  const SubscriptionCard({
    required this.planName,
    required this.price,
    required this.gradientColors,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 210,
        child: Container(
          width: 170,
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected ? kred : Color.fromARGB(148, 54, 54, 54),
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight20,
                Text(
                  planName,
                  style: TextStyle(
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: gradientColors,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(Rect.fromLTRB(0, 0, 200, 70)),
                    fontSize: isSelected ? 23 : 17,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                kheight50,
                kheight80,
                Text(
                  price,
                  style: TextStyle(
                    color: isSelected ? kwhite : Colors.white70,
                    fontSize: isSelected ? 18 : 15,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
