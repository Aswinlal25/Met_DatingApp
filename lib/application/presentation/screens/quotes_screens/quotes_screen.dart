// // ignore_for_file: must_be_immutable

// import 'package:dating_app/application/presentation/screens/quotes_screen/pages/page_one.dart';
// import 'package:dating_app/application/presentation/screens/quotes_screen/pages/page_three.dart';
// import 'package:dating_app/application/presentation/screens/quotes_screen/pages/page_two.dart';
// import 'package:flutter/material.dart';

// class QuotesScreen extends StatelessWidget {
//     QuotesScreen({Key? key}) : super(key: key);

//   final _controller = PageController();
//   final List<Widget> pages = [
//     Page1(),
//     Page2(),
//     Page3(),
//   ];
//   int _currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: Stack(
//               children: [
//                 PageView(
//                   controller: _controller,
//                   onPageChanged: (index) {
//                     _currentPage = index;
//                   },
//                   children: pages,
//                 ),
//                 Positioned(bottom: 100,
//                 left: 170,
//                   child: _buildDotIndicator(), )
//               ],

//             ),
//           ),

//         ],
//       ),
//     );
//   }

//   Widget _buildDotIndicator() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(pages.length, (index) {
//         return Container(
//           width: 8.0,
//           height: 8.0,
//           margin: EdgeInsets.symmetric(horizontal: 4.0),
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: _currentPage == index ? Colors.blue : Colors.grey,
//           ),
//         );
//       }),
//     );
//   }
// }
