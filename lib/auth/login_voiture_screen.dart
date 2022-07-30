import 'package:banyoulti/utils/colors.dart';
import 'package:banyoulti/home/home.dart';
import 'package:banyoulti/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginVoitureScreen extends StatefulWidget {
  const LoginVoitureScreen({Key? key}) : super(key: key);

  @override
  State<LoginVoitureScreen> createState() => _LoginVoitureScreenState();
}

class _LoginVoitureScreenState extends State<LoginVoitureScreen> {
  final carNameController = TextEditingController();
  final modelController = TextEditingController();
  final dateController = TextEditingController();
  final kmController = TextEditingController();

  bool passCheck = false;
  bool confirmPassCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Center(
                child: Container(
                  height: 150,
                  width: Get.width * 0.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/Logo2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              customTextField('images/auth/car.png', 'Marque de voiture',
                  carNameController),
              const SizedBox(height: 15),
              customTextField(
                  'images/auth/car.png', 'Modele de voiture', modelController),
              const SizedBox(height: 15),
              customTextField('images/auth/car.png',
                  'Date de mise en circulation', dateController),
              const SizedBox(height: 15),
              customTextField(
                  'images/auth/car.png', 'Kilometrage Parcourue', kmController),
              const SizedBox(height: 40),
              MaterialButton(
                minWidth: Get.width * 0.85,
                height: 50,
                color: kprimary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Get.to(() => Home());
                },
                child: const Text(
                  'SUIVANT',
                  style: TextStyle(
                    color: kwhite,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
