// import 'dart:developer';
// import 'package:dating_app/application/presentation/screens/premium_screen.dart/premium_page.dart';
// import 'package:dating_app/application/presentation/utils/colors.dart';
// import 'package:dating_app/application/presentation/utils/constant.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';

// class PlaceOrderWithRazorPay extends StatefulWidget {
//   final int? Amount;
//   final String? planName;

//   const PlaceOrderWithRazorPay({
//     super.key,
//     required this.Amount,
//     required this.planName,
//   });

//   @override
//   State<PlaceOrderWithRazorPay> createState() => _PlaceOrderWithRazorPayState();
// }

// class _PlaceOrderWithRazorPayState extends State<PlaceOrderWithRazorPay> {
//   late Razorpay _razorpay;
//   int paymentId = 0;
//   List<String>? plan1 = [
//     'Unlimited Like',
//     '1 Month Validity',
//     'Price Rs.210',
//     'More chances for matches',
//   ];
//   List<String>? plan2 = [
//     'Unlimited Like',
//     'See Liked Profiles',
//     '1 Month Validity',
//     'Price Rs.299',
//     'More chances for matches',
//   ];

//   @override
//   void initState() {
//     _razorpay = Razorpay();
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 170,
//           ),
//           Text(
//             "₹${widget.Amount.toString()}",
//             style: TextStyle(
//               color: kwhite,
//               decoration: TextDecoration.none,
//             ),
//           ),
//           kheight20,
//           Container(
//             height: 332,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: Color.fromARGB(148, 54, 54, 54),
//                 width: 2,
//               ),
//               borderRadius: BorderRadius.all(Radius.circular(20)),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(left: 10, top: 20),
//               child: ListView.builder(
//                 itemCount:
//                     selectedCardIndex == 1 ? plan1!.length : plan2!.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     leading: Icon(Icons.check, color: Colors.green
//                         // kblack56,
//                         ),
//                     title: Text(
//                       selectedCardIndex == 1 ? plan1![index] : plan2![index],
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white60,
//                         letterSpacing: 1,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//           Text(
//             "Continue With ${widget.planName} Plan",
//             style: TextStyle(
//                 color: fkwhite, decoration: TextDecoration.none, fontSize: 14),
//           ),
//           SizedBox(
//             height: 100,
//           ),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               primary: Color.fromARGB(205, 244, 67, 54),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30.0),
//               ),
//             ),
//             onPressed: () async {
//               var options = {
//                 'method': {
//                   'netbanking': true,
//                   'card': true,
//                   'upi': true,
//                   'wallet': true,
//                 },
//                 'key': 'rzp_test_ghgpkn7YCYJJZQ',
//                 'amount': widget.Amount,
//                 'name': 'user',
//                 "entity": "order",
//                 "status": "created",
//                 "currency": "INR",

//                 "notes": [], // Generate order_id using Orders API
//                 'description': 'razorpay glamgarbapp',
//                 'timeout': 120, // in seconds
//                 'prefill': {'contact': '9895840715', 'email': 'user@gmail.com'}
//               };

//               _razorpay.open(options);
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: SizedBox(
//                 height: 35,
//                 width: 300,
//                 child: Center(
//                     child: Text(
//                   'Continue Payment',
//                   style: TextStyle(
//                       fontSize: 15, color: kwhite, fontWeight: FontWeight.bold),
//                 )),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _handlePaymentSuccess(PaymentSuccessResponse response) {
//     Fluttertoast.showToast(
//         msg: "Payment Success : ${response.paymentId}",
//         toastLength: Toast.LENGTH_SHORT,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.green,
//         textColor: kwhite,
//         fontSize: 16.0);

//     Navigator.pushAndRemoveUntil(
//       context,
//       MaterialPageRoute(builder: (context) => PremiumScreen()),
//       (route) => false,
//     );
//   }

//   void _handlePaymentError(PaymentFailureResponse response) {
//     Fluttertoast.showToast(
//         msg: "Payment  Failed Tryagain",
//         toastLength: Toast.LENGTH_SHORT,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: kwhite,
//         fontSize: 16.0);
//   }

// ignore_for_file: deprecated_member_use

//   void _handleExternalWallet(ExternalWalletResponse response) {
//     log('external handler');
//   }
// }
import 'dart:developer';
import 'package:dating_app/application/business_logic/Features/features_bloc.dart';
import 'package:dating_app/application/presentation/screens/bottom_navigation/bottom_nav.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/data/services/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PlaceOrderWithRazorPay extends StatefulWidget {
  final int? Amount;
  final String? planName;
  final int? orderid;
  final String? razorid;
  const PlaceOrderWithRazorPay({
    Key? key,
    required this.Amount,
    required this.planName,
    required this.orderid,
    required this.razorid,
  }) : super(key: key);

  @override
  State<PlaceOrderWithRazorPay> createState() => _PlaceOrderWithRazorPayState();
}

class _PlaceOrderWithRazorPayState extends State<PlaceOrderWithRazorPay> {
  late Razorpay _razorpay;
  int paymentId = 0;

  @override
  void initState() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 170),
          Text(
            "₹${widget.Amount.toString()}",
            style: TextStyle(color: kwhite, decoration: TextDecoration.none),
          ),
          SizedBox(height: 20),
          Text(
            "Continue With ${widget.planName} Plan",
            style: TextStyle(
                color: fkwhite, decoration: TextDecoration.none, fontSize: 14),
          ),
          kheight20,
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              border:
                  Border.all(color: Color.fromARGB(148, 54, 54, 54), width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  kheight10,
                  Text(
                    '1 Month Validity',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white60,
                      letterSpacing: 1,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  kheight10,
                  Text(
                    'Unlimited Like',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white60,
                      letterSpacing: 1,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  kheight10,
                  widget.Amount == 299
                      ? Text(
                          'See Liked Profiles',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white60,
                            letterSpacing: 1,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      : SizedBox(),
                  kheight10,
                  Text(
                    'More chances for matches',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white60,
                      letterSpacing: 1,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 200),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(205, 244, 67, 54),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () async {
              var options = {
                'method': {
                  'netbanking': true,
                  'card': true,
                  'upi': true,
                  'wallet': true,
                },
                'key': 'rzp_test_AVJtv4tbQM9Bps',
                'amount': widget.Amount! * 100,
                'name': 'user',
                "entity": "order",
                "status": "created",
                "currency": "INR",
                "order_id": widget.razorid,

                "notes": [], // Generate order_id using Orders API
                'description': 'razorpay glamgarbapp',
                'timeout': 120, // in seconds
                'prefill': {'contact': '9895840715', 'email': 'user@gmail.com'}
              };

              _razorpay.open(options);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 35,
                width: 300,
                child: Center(
                    child: Text(
                  'Continue Payment',
                  style: TextStyle(
                      fontSize: 15, color: kwhite, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) async {
    Fluttertoast.showToast(
        msg: "Payment Success : ${response.paymentId}",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: kwhite,
        fontSize: 16.0);

    try {
      print(
          '---0--0-0--response----${context.read<FeaturesBloc>().state.paymentResponse?.data?.orderId}----${response.paymentId}----${response.signature}');
      await FeaturesApi().verifyPayment(
          orderId: widget.orderid,
          paymentId: response.paymentId,
          signature: response.signature);

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => BottomNavBar()),
        (route) => false,
      );
    } catch (error) {
      Fluttertoast.showToast(
          msg: "Payment verification failed",
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: kwhite,
          fontSize: 16.0);
      // You may want to handle this differently, e.g., showing an error dialog
    }
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "Payment  Failed Tryagain",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: kwhite,
        fontSize: 16.0);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    log('external handler');
  }
}
