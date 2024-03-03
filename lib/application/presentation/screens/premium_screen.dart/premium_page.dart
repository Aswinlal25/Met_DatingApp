// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:dating_app/application/business_logic/Features/features_bloc.dart';
import 'package:dating_app/application/presentation/screens/premium_screen.dart/widgets/payment.dart';
import 'package:dating_app/application/presentation/utils/loading_indicator.dart/loading.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PremiumScreen extends StatefulWidget {
  final int? initailcard;
  PremiumScreen({Key? key, required this.initailcard}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

int? selectedCardIndex;

class _PremiumScreenState extends State<PremiumScreen> {
  List<String>? plan1 = [
    'Unlimited Like',
    '1 Month Validity',
    'Price Rs.210',
    'More chances for matches',
  ];
  List<String>? plan2 = [
    'Unlimited Like',
    'See Liked Profiles',
    '1 Month Validity',
    'Price Rs.299',
    'More chances for matches',
  ];

  @override
  void initState() {
    context.read<FeaturesBloc>().add(FeaturesEvent.getSubcriptionPlans());
    context.read<FeaturesBloc>().add(FeaturesEvent.getUserOrder());
    context.read<FeaturesBloc>().add(FeaturesEvent.getLikes());

    selectedCardIndex = widget.initailcard;
    // context.read<FeaturesBloc>().state.usersOrderModel?.data?.isNotEmpty ==
    //         true
    //     ? context
    //         .read<FeaturesBloc>()
    //         .state
    //         .usersOrderModel!
    //         .data![0]
    //         .subscriptionId
    //     : 1;
    super.initState();
    // selectedCardIndex =
    //     context.read<FeaturesBloc>().state.usersOrderModel!.data![0].id ?? 0;
  }

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
            child: BlocConsumer<FeaturesBloc, FeaturesState>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state.subscriptionModel != null &&
                      state.usersOrderModel != null) {
                    final plans = state.subscriptionModel!.data;

                    if (plans != null && plans.isNotEmpty) {
                      return Stack(
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
                                    planName: plans[0].name,
                                    price: 'Rs.${plans[0].amount}/mo',
                                    gradientColors: [
                                      const Color.fromARGB(255, 255, 191, 0),
                                      Color.fromARGB(168, 255, 111, 0),
                                      const Color.fromARGB(255, 255, 191, 0),
                                      Color.fromARGB(168, 255, 111, 0),
                                    ],
                                    isSelected: selectedCardIndex == 1,
                                    onTap: () {
                                      selectCard(1);
                                    },
                                  ),
                                  SizedBox(
                                    width: 17,
                                  ),
                                  SubscriptionCard(
                                    planName: plans[1].name,
                                    price: 'Rs.${plans[1].amount}/mo',
                                    gradientColors: [
                                      Color.fromARGB(255, 130, 130, 130),
                                      Color.fromARGB(223, 204, 204, 204),
                                    ],
                                    isSelected: selectedCardIndex == 2,
                                    onTap: () {
                                      selectCard(2);
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 20),
                                  child: ListView.builder(
                                    itemCount: selectedCardIndex == 1
                                        ? plan1!.length
                                        : plan2!.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        leading: Icon(Icons.check,
                                            color: Colors.green
                                            // kblack56,
                                            ),
                                        title: Text(
                                          selectedCardIndex == 1
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
                              state.getLikes?.data?.isSubscribed != null &&
                                      state.getLikes!.data!.isSubscribed == true
                                  ? SizedBox()
                                  : ElevatedButton(
                                      onPressed: () async {
                                        setState(() {
                                          context.read<FeaturesBloc>().add(
                                              FeaturesEvent.orderSubscription(
                                                  subId: selectedCardIndex));

                                          final orderid = context
                                              .read<FeaturesBloc>()
                                              .state
                                              .subciptionOrderModel!
                                              .data!
                                              .orderId;

                                          context.read<FeaturesBloc>().add(
                                              FeaturesEvent.makepayment(
                                                  orderId: orderid));
                                          // featuresApi.makePayment(
                                          //     orderId: orderid);
                                          print(
                                              '-----oder id -----${state.paymentResponse?.data?.orderId}');
                                          final subciptionOrderModel =
                                              state.subciptionOrderModel;
                                          if (subciptionOrderModel != null &&
                                              subciptionOrderModel.data !=
                                                  null) {
                                            selectedCardIndex == 1
                                                ? Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            PlaceOrderWithRazorPay(
                                                              Amount: plans[0]
                                                                  .amount,
                                                              planName:
                                                                  plans[0].name,
                                                              orderid: state
                                                                  .paymentResponse
                                                                  ?.data
                                                                  ?.orderId,
                                                              razorid: state
                                                                  .paymentResponse
                                                                  ?.data
                                                                  ?.razorId,
                                                            )))
                                                : Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            PlaceOrderWithRazorPay(
                                                              Amount: plans[1]
                                                                  .amount,
                                                              planName:
                                                                  plans[1].name,
                                                              orderid: state
                                                                  .paymentResponse
                                                                  ?.data
                                                                  ?.orderId,
                                                              razorid: state
                                                                  .paymentResponse
                                                                  ?.data
                                                                  ?.razorId,
                                                            )));
                                          } else {
                                            // Handle the case where subciptionOrderModel or its data is null
                                            // For example, show a message or handle it based on your app's logic
                                          }
                                          ;
                                        });
                                        print(
                                            '-----oder id -----${state.paymentResponse?.data?.orderId}');
                                        print(selectedCardIndex);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(205, 244, 67, 54),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SizedBox(
                                          height: 35,
                                          width: 300,
                                          child: Center(
                                            child: selectedCardIndex == 1
                                                ? Text(
                                                    'Continue with GOLD',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: kwhite,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                : Text(
                                                    'Continue with PLATINUM',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: kwhite,
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 2),
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
                      );
                    } else {
                      return LoadingAnimation(width: 10);
                    }
                  } else {
                    return LoadingAnimation(width: 10);
                  }
                }),
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

class SubscriptionCard extends StatefulWidget {
  final String? planName;
  final String? price;
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
  State<SubscriptionCard> createState() => _SubscriptionCardState();
}

class _SubscriptionCardState extends State<SubscriptionCard> {
  @override
  void initState() {
    context.read<FeaturesBloc>().add(FeaturesEvent.getLikes());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 210,
        child: Container(
          width: 170,
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.isSelected
                  ? context.read<FeaturesBloc>().state.usersOrderModel !=
                              null &&
                          context
                                  .read<FeaturesBloc>()
                                  .state
                                  .usersOrderModel!
                                  .data !=
                              null &&
                          widget.isSelected &&
                          selectedCardIndex ==
                              context
                                  .read<FeaturesBloc>()
                                  .state
                                  .usersOrderModel!
                                  .data![0]
                                  .subscriptionId
                      ? Colors.green
                      : kred
                  : Color.fromARGB(148, 54, 54, 54),
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: BlocBuilder<FeaturesBloc, FeaturesState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kheight20,
                    Text(
                      widget.planName!,
                      style: TextStyle(
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: widget.gradientColors,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(Rect.fromLTRB(0, 0, 200, 70)),
                        fontSize: widget.isSelected ? 23 : 17,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                    kheight20,
                    state.usersOrderModel != null &&
                            state.usersOrderModel!.data != null &&
                            widget.isSelected
                        ? selectedCardIndex ==
                                state.usersOrderModel!.data![0].subscriptionId
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Active plan',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  kheight5,
                                  Text(
                                    'Expiry : ${state.usersOrderModel!.data![0].expiryDate.toString()}',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 11,
                                        letterSpacing: 0.5),
                                  ),
                                ],
                              )
                            : SizedBox()
                        : SizedBox(),
                    state.usersOrderModel != null &&
                            state.usersOrderModel!.data != null &&
                            widget.isSelected &&
                            selectedCardIndex ==
                                state.usersOrderModel!.data![0].subscriptionId
                        ? kheight50
                        : kheight90,
                    Text(
                      widget.price!,
                      style: TextStyle(
                        color: widget.isSelected ? kwhite : Colors.white70,
                        fontSize: widget.isSelected ? 18 : 15,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
