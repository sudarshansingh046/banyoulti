import 'package:banyoulti/utils/colors.dart';
import 'package:banyoulti/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'privacy_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool passCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/Logo2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Text(
                'Langue',
                style: TextStyle(
                  fontSize: 15,
                  color: kblack,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 18,
              ),
              customTextField(
                  'images/auth/Email.png', 'Email', emailController),
              SizedBox(
                height: MediaQuery.of(context).size.height / 22,
              ),
              customTextField(
                'images/auth/Password.png',
                'Mots de passe',
                passwordController,
                isPassword: true,
                passCheck: passCheck,
                onSuffixIconTap: () {
                  setState(() {
                    passCheck = !passCheck;
                  });
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: Get.width * 0.05),
                  child: const Text(
                    "J'ai oublier mon mots de passe.",
                    style: TextStyle(
                      fontSize: 15,
                      color: kgrey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                minWidth: Get.width * 0.85,
                height: 50,
                color: kprimary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Get.to(() => const PrivacyScreen());
                },
                child: const Text(
                  'LOG IN',
                  style: TextStyle(
                    color: kwhite,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "J'ai pas un compte. ",
                    style: TextStyle(
                      fontSize: 15,
                      color: kgrey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const SignUpScreen());
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 18,
                        color: kprimary,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const Text(
                "Ou bien connecte avec",
                style: TextStyle(
                  fontSize: 15,
                  color: kgrey,
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          image: const DecorationImage(
                              image: AssetImage('images/facebook.png'))),
                    ),
                  ),
                  const SizedBox(width: 30),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage('images/google.png'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          image: const DecorationImage(
                              image: AssetImage('images/twitter.png'))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
