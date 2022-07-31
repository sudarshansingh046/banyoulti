import 'package:banyoulti/model/entretiens_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<EntretiensModel> entretiensList = [
    EntretiensModel('images/home/Oil.png', 'Vidange et Filtres', DateTime.now(),
        '053159', 'changement de huile'),
    EntretiensModel('images/home/Engine.png', 'Moteur', DateTime.now(),
        '055660', 'changement de huile'),
    EntretiensModel('images/home/Oil.png', 'Vidange et Filtres', DateTime.now(),
        '053159', 'changement de huile'),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: Get.width * .9,
        margin: const EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bienvenue, Karim',
              style: TextStyle(
                color: kprimary,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(10),
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/home/refresh.png')),
                      const SizedBox(
                        width: 13,
                      ),
                      const Text(
                        'Bienvenue, Karim',
                        style: TextStyle(
                          color: kprimary,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Kilometrage Actuel',
                    style: TextStyle(
                      color: kprimary,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: const TextSpan(
                        text: '053276',
                        style: TextStyle(
                          color: kprimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        children: [
                          TextSpan(
                            text: ' km',
                            style: TextStyle(
                              color: kprimary,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          )
                        ]),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Mettre a jour',
                    style: TextStyle(
                      color: kprimary,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 45,
                    width: Get.width * 0.75,
                    padding: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const TextField(
                      showCursor: true,
                      style: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        color: kblack,
                      ),
                      cursorColor: Color(0xff026874),
                      readOnly: false,
                      maxLength: 10,
                      decoration: InputDecoration(
                        counterText: '',
                        focusedBorder: InputBorder.none,
                        hintText: 'Enter KM',
                        contentPadding: EdgeInsets.only(bottom: 5),
                        alignLabelWithHint: true,
                        hintStyle: TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          color: kgrey,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    minWidth: Get.width * 0.7,
                    height: 50,
                    color: kprimary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      // Get.to(() => LoginVoitureScreen());
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
            const SizedBox(height: 20),
            const Text(
              'Mes Dernier Entretiens:',
              style: TextStyle(
                color: kprimary,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            // const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: entretiensList.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                      margin:
                          const EdgeInsets.only(bottom: 5, left: 4, right: 4),
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 4,
                            blurRadius: 4,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(entretiensList[i].image!),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            height: 90,
                            width: 2,
                            color: kgrey,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                entretiensList[i].name!,
                                style: const TextStyle(
                                  color: kprimary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Date : ${DateFormat('dd/MM/yyyy').format(entretiensList[i].date!)}',
                                style: const TextStyle(
                                  color: kprimary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Kilometrage : ${entretiensList[i].kilometers!}',
                                style: const TextStyle(
                                  color: kprimary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Details : ${entretiensList[i].details!}',
                                overflow: TextOverflow.fade,
                                style: const TextStyle(
                                  color: kprimary,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
