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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                child: Text(
                  "Politique de confidentialite et\nconditions d'utilisation",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kprimary,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 27,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2.1,
                decoration: BoxDecoration(
                  border: Border.all(color: kgrey),
                ),
                child: Scrollbar(
                  thickness: 10,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '1. ACCEPTANCE THE USE OF LOREM IPSUM TERMS AND CONDITIONS ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                              'Your access to and use of Lorem Ipsum (the app) is subject exclusively to these Terms and Conditions. You will not use the app for any purpose that is unlawful or prohibited by these Terms and Conditions. By using the app you are fully accepting the terms, conditions and disclaimers contained in this notice. If you do not accept these Terms and Conditions you must immediately stop using the app.'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('2. CREDIT CARD DETAILS ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              'All Lorem Ipsum purchases are managed by the individual App Stores (Apple, Google Windows) and Lorem Ipsum will never store your credit card information or make it available to any third parties. Any purchasing information provided will be provided directly from you to the respective App Store and you will be subject to their credit card policies.')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
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
