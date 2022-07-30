import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: kprimary,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 70,
              width: 70,
              child: Image.asset('images/profile/Profile.png')),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 5),
            child: const Text(
              "KARIM BIN SALAH",
              style: TextStyle(
                color: kwhite,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
          ),
          const Text(
            "KARIM BIN SALAH@gmail.com",
            style: TextStyle(
              color: kwhite,
              fontWeight: FontWeight.w200,
              fontSize: 13,
            ),
          ),
          SizedBox(height: 20),
          customTile('images/profile/Modify.png', "Modifie votre profile"),
          customTile('images/profile/add.png', "Ajoute un profile de voiture"),
          customTile('images/profile/Setting 2.png', "Parametre"),
          customTile('images/profile/Help.png', "Aide"),
          customTile('images/profile/Log out.png', "Log out"),
        ],
      ),
    );
  }
}

Widget customTile(String image, String title) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Row(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: Image.asset(image),
        ),
        SizedBox(width: 40),
        Text(
          title,
          style: TextStyle(
            color: kwhite,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
      ],
    ),
  );
}
