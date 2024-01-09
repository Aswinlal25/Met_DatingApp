import 'package:dating_app/application/presentation/screens/common_widgets/drawer.dart';
import 'package:dating_app/application/presentation/screens/home_screen/home_screen.dart';
import 'package:dating_app/application/presentation/screens/interest/interests_screen.dart';
import 'package:dating_app/application/presentation/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BottomNavBar> {
  late PageController controller;
  int selected = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: selected);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
         appBar: AppBar(
            backgroundColor: kblack,
            leading:   Padding(
              padding: const EdgeInsets.only(left: 0),
              // child: Container(
              //    width: 40,
                 
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage('assets/images/logos/Met_logo_black1.png'),
              //         fit: BoxFit.contain,
              //       ),
              //     ),
              //   ),
            ),
            actions: [
              Padding(
              padding: const EdgeInsets.all(12),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => DrawerScreen()));
                },
                child: Container(
                  width: 39,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logos/menu (1).png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                
              ),
            ),
            
            ],
          ),
         // backgroundColor: kblack,
          body: PageView(
            controller: controller,
            children: [
              // Pages for each bottom navigation item
              HomeScreen(),
              InterersUsersScreen(),
              Container(
                  color: Colors.purple, child: Center(child: Text('Cabin Page'))),
            ],
          ),
          bottomNavigationBar: StylishBottomBar(
            backgroundColor: kblack,
             
            option: AnimatedBarOptions(
              iconSize: 30,
              iconStyle: IconStyle.simple,
              opacity: 0.3,
           
            ),
            items: [
              BottomBarItem(
                icon: const Icon(Icons.home),
                title: const Text(''),
                backgroundColor: Colors.white30,
                selectedIcon: const Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 195, 47, 36),
                ),
              ),
              
              BottomBarItem(
                icon: const Icon(CupertinoIcons.star_fill),
                title: const Text(''),
                backgroundColor: Colors.white30,
                selectedIcon: const Icon(
                  Icons.grade,
                  color: Color.fromARGB(255, 195, 47, 36),
                ),
              ),
              BottomBarItem(
                icon: const Icon(Icons.favorite),
                title: const Text(''),
                backgroundColor: Colors.white30,
                selectedIcon: const Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 195, 47, 36),
                ),
              ),
              BottomBarItem(
                icon: const Icon(CupertinoIcons.chat_bubble_2_fill),
                title: const Text(''),
                backgroundColor: Colors.white30,
                selectedIcon: const Icon(
                 CupertinoIcons.chat_bubble_2_fill,
                  color: Color.fromARGB(255, 195, 47, 36),
                ),
              ),
              BottomBarItem(
                icon: const Icon(Icons.person),
                title: const Text('Profile'),
                backgroundColor: Colors.white30,
                selectedIcon: const Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 195, 47, 36),
                ),
              ),
            ],
            fabLocation: StylishBarFabLocation.center,
            
            //hasNotch: true,
            currentIndex: selected,
            onTap: (index) {
              setState(() {
                selected = index;
                controller.jumpToPage(index);
              });
            },
          ),
        ),
        Positioned(height: 35,top: 33,left: 5,
          child:Container(
                 width: 80,
                 
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logos/Met_logo_black1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ), )
      ],
    );
  }
}
