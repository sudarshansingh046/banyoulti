import 'dart:async';
import 'package:banyoulti/onboarding/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void timer() {
    Timer(const Duration(seconds: 3), () {
      Get.off(() => const OnboardingScreen());
    });
  }

  @override
  void initState() {
    timer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: Get.height,
          width: Get.width,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/Logo1.png"),
            ),
          ),
        ),
      ),
    );
  }
}
