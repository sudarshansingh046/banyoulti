import 'package:banyoulti/model/entretiens_model.dart';
import 'package:banyoulti/model/notifications_model.dart';
import 'package:banyoulti/model/rappel_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class RappelScreen extends StatefulWidget {
  const RappelScreen({Key? key}) : super(key: key);

  @override
  State<RappelScreen> createState() => _RappelScreenState();
}

class _RappelScreenState extends State<RappelScreen> {
  List<RappelModel> entretiensList = [
    RappelModel('images/home/Oil.png', 'vidange et Filtres', DateTime.now(),
        'changement de huile'),
    RappelModel('images/home/Tires.png', 'Pneus et Freins', DateTime.now(),
        'changement de huile'),
  ];
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Rappel des entretiens",
              style: TextStyle(
                color: kprimary,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text(
              "Vous pouvez Definir manuallement\ndes rappels pour certains entretiens",
              style: TextStyle(
                color: kgrey,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 30),
            const Text(
              "Ajouter",
              style: TextStyle(
                color: kprimary,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.add), hintText: 'Nouveau Rappel'),
            ),
            SizedBox(height: 20),
            const Text(
              "Mes Rappel",
              style: TextStyle(
                color: kprimary,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: entretiensList.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      height: 120,
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
                            height: 40,
                            width: 40,
                            child: Image.asset(entretiensList[i].image!),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            height: 90,
                            width: 2,
                            color: kgrey,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                entretiensList[i].name!,
                                style: TextStyle(
                                  color: kprimary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Date : ${DateFormat('dd/MM/yyyy').format(entretiensList[i].date!)}',
                                style: const TextStyle(
                                  color: kprimary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '${entretiensList[i].details!}',
                                style: TextStyle(
                                  color: kprimary,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            height: 90,
                            width: 2,
                            color: kgrey,
                          ),
                          const Text(
                            "Modifie",
                            style: TextStyle(
                              color: kprimary,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
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
