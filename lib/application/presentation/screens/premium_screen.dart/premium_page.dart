// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';

class PremiumScreen extends StatelessWidget {
  List<String>? points = [
    'Unlimited Like',
    '1 Month Validity',
    'Price Rs.699',
    'More chances for matches',
    'See Liked Profiles',
  ];
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
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2,
                          wordSpacing: 2),
                    ),
                    kheight20,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Select a paln',
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
                            // const Color.fromARGB(255, 255, 191, 0),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SubscriptionCard(
                          planName: 'PLATINUM',
                          price: 'Rs.999/mo',
                          gradientColors: [
                            const Color.fromARGB(255, 255, 191, 0),
                            Color.fromARGB(224, 255, 111, 0),
                          ],
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
                          itemCount: points?.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Icon(
                                Icons.check,
                                color: kblack56,
                              ),
                              title: Text(
                                points![index],
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
                            child: Text(
                              'Continue',
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
            ))
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
}

class SubscriptionCard extends StatefulWidget {
  final String planName;
  final String price;
  final List<Color> gradientColors;

  const SubscriptionCard({
    required this.planName,
    required this.price,
    required this.gradientColors,
  });

  @override
  _SubscriptionCardState createState() => _SubscriptionCardState();
}

class _SubscriptionCardState extends State<SubscriptionCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 210,
        child: Container(
          // height: 232,
          width: 175,
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
                  widget.planName,
                  style: TextStyle(
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: widget.gradientColors,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(Rect.fromLTRB(0, 0, 200, 70)),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                kheight50,
                kheight80,
                Text(
                  widget.price,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
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
