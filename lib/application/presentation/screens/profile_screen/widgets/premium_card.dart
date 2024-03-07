import 'package:dating_app/application/business_logic/Features/features_bloc.dart';
import 'package:dating_app/application/presentation/screens/common_widgets/drawer.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: BlocBuilder<FeaturesBloc, FeaturesState>(
        builder: (context, state) {
          // bool? isSubscribed = context
          //     .read<FeaturesBloc>()
          //     .state
          //     .getLikes!
          //     .data!
          //     .isSubscribed;
          final likesData = state.getLikes?.data;
          if (likesData != null) {
            bool? isSubscribed = likesData.isSubscribed;
            return Container(
              height: 112,
              decoration: BoxDecoration(
                color: Color.fromARGB(80, 59, 59, 59),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LogoContainer(),
                            SizedBox(width: 2),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, left: 10),
                              child: CardButton(),
                            ),
                          ],
                        ),
                        isSubscribed != null && isSubscribed
                            ? Text(
                                '    Go to see your current subscription plan ',
                                style: TextStyle(
                                  color: kwhite,
                                  letterSpacing: 0,
                                  fontSize: 12,
                                ),
                              )
                            : Text(
                                'Go Premium to instantly discover your matches',
                                style: TextStyle(
                                  color: kwhite,
                                  letterSpacing: 0,
                                  fontSize: 12,
                                ),
                              ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            );
          } else {
            return Container(
              height: 112,
              decoration: BoxDecoration(
                color: Color.fromARGB(80, 59, 59, 59),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LogoContainer(),
                            SizedBox(width: 2),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, left: 10),
                              child: CardButton(),
                            ),
                          ],
                        ),
                        Text(
                          'Go Premium to instantly discover your matches',
                          style: TextStyle(
                            color: kwhite,
                            letterSpacing: 0,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ); // Placeholder for when data is loading or null
          }
        },
      ),
    );
  }
}
