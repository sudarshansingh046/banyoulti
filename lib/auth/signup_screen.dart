import 'package:banyoulti/utils/colors.dart';
import 'package:banyoulti/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final preNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
              customTextField('images/auth/person.png', 'Nom', nameController),
              const SizedBox(height: 15),
              customTextField(
                  'images/auth/person.png', 'Prenom', preNameController),
              const SizedBox(height: 15),
              customTextField(
                  'images/auth/Email.png', 'Email', emailController),
              const SizedBox(height: 15),
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
              const SizedBox(height: 15),
              customTextField(
                'images/auth/Password.png',
                'Confirmer le mots de passe',
                passwordController,
                isPassword: true,
                passCheck: confirmPassCheck,
                onSuffixIconTap: () {
                  setState(() {
                    confirmPassCheck = !confirmPassCheck;
                  });
                },
              ),
              const SizedBox(height: 30),
              MaterialButton(
                minWidth: Get.width * 0.85,
                height: 50,
                color: kprimary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {},
                child: const Text(
                  'SUIVANT',
                  style: TextStyle(
                    color: kwhite,
                  ),
                ),
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
