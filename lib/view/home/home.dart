import 'package:banyoulti/utils/colors.dart';
import 'package:banyoulti/view/home/home_screen.dart';
import 'package:banyoulti/view/home/notifications_screen.dart';
import 'package:banyoulti/view/home/profile_screen.dart';
import 'package:banyoulti/view/home/rappel_screen.dart';
import 'package:banyoulti/view/home/retour_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> navigationBarIconsList = [
    'images/home/menu.png',
    'images/home/home.png',
    'images/home/tools.png',
    'images/home/belle.png',
    'images/home/Map icon.png',
    'images/home/lamp.png',
    'images/home/Setting.png',
  ];

  int selectedIndex = 1;

  List<Widget> screens = [
    Container(),
    HomeScreen(),
    RetourScreen(),
    NotificationsScreen(),
    Container(),
    RappelScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: selectedIndex == 6 ? kprimary : kwhite,
      body: SizedBox(
        height: Get.height,
        child: Column(
          children: [
            Container(
              height: 135,
              decoration: const BoxDecoration(
                color: kprimary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Banyoulti',
                          style: TextStyle(
                            color: kwhite,
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                          ),
                        ),
                        // SizedBox(
                        //     height: 100,
                        //     width: 100,
                        //     child: Image.asset('images/Logo3.png')),
                        SizedBox(
                            width: 50,
                            height: 30,
                            child: Image.asset('images/home/Search.png')),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    width: Get.width,
                    height: 25,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: navigationBarIconsList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (ctx, i) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = i;
                                    });
                                  },
                                  child: SizedBox(
                                    width: 23,
                                    height: 23,
                                    child: Image.asset(
                                      navigationBarIconsList[i],
                                      color:
                                          selectedIndex == i ? korange : kwhite,
                                    ),
                                  ),
                                ),
                                SizedBox(width: Get.width * 0.045),
                                if (i != navigationBarIconsList.length - 1)
                                  Container(
                                    height: 30,
                                    width: 2,
                                    color: kgrey.withOpacity(0.5),
                                  ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            screens[selectedIndex]
          ],
        ),
      ),
    );
  }
}
