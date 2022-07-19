import 'package:banyoulti/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:get/get.dart';
import 'onboarding_package.dart' as o;

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //print("nextButton pressed");
    }
  }

  final List<String> onBoardData = [
    'Science has proven that powerful\n '
        'consistent thoughts can make you the\n'
        '  best version of yourself, a Paragon.',
    'You must consistently, purposely, and\n'
        'intentionally be the DRIVER of your ',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // backgroundColor: kwhite,
      backgroundColor: Color(0xff0f3355),
      body: Container(
        width: double.infinity,
        height: Get.height,
        child: o.OnBoard(
          onBoardData: onBoardData,
          pageController: _pageController,
          titleStyles: TextStyle(
            color: kblack,
            fontSize: 28.0,
            fontWeight: FontWeight.w600,
          ),
          descriptionStyles: TextStyle(
            color: kwhite,
            fontSize: 17.0,
          ),
          pageIndicatorStyle: const PageIndicatorStyle(
            activeColor: kwhite,
            width: 120,
            inactiveColor: Color(0xff0f3355),
            activeSize: Size(16, 16),
            inactiveSize: Size(16, 16),
          ),
        ),
      ),
    ));
  }
}
