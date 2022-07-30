import 'package:banyoulti/utils/colors.dart';
import 'package:banyoulti/auth/login_voiture_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool isChecked = false;
  final scrollController = ScrollController(initialScrollOffset: 50.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
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
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Politique de confidentialite et\nconditions d'utilisation",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kprimary,
                    ),
                  ),
                ),
              ),
              Scrollbar(
                controller: scrollController,
                thickness: 10,
                radius: const Radius.circular(3),
                interactive: true,
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: kgrey),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return const Text(
                            '1. YOUR AGREEMENT By using this Site, you agree to be bound by, and to comply with, these Terms and Conditions. If you do not agree to these Terms and Conditions, please do not use this site. PLEASE NOTE: We reserve the right, at our sole discretion, to change, modify or otherwise alter these Terms and Conditions at any time. Unless otherwise indicated, amendments will become effective immediately. Please review these Terms and Conditions periodically. Your continued use of the Site following the posting of changes and/or modifications will constitute your acceptance of the revised Terms and Conditions and the reasonableness of these standards for notice of changes. For your information, this page was last updated as of the date at the top of these terms and conditions.2. PRIVACY Please review our Privacy Policy, which also governs your visit to this Site, to understand our practices.3. LINKED SITES This Site may contain links to other independent third-party Web sites ');
                      }),
                ),
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  const Text(
                    "J'ai lu et j'accepte les Politique de con",
                    // "J'ai lu et j'accepte les Politique de confidentialite et\nconditions d'utilisation de cette application",
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      fontSize: 15,
                      color: kgrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              MaterialButton(
                minWidth: Get.width * 0.85,
                height: 50,
                color: kprimary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  if (isChecked) {
                    Get.to(() => LoginVoitureScreen());
                  }
                },
                child: const Text(
                  'CONFIRMER',
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
