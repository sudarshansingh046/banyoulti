import 'package:banyoulti/model/entretiens_model.dart';
import 'package:banyoulti/model/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List<NotificationsModel> entretiensList = [
    NotificationsModel(
        'images/home/Oil.png', 'vidange et Filtres', 'changement de huile'),
    NotificationsModel(
        'images/home/Tires.png', 'Pneus et Freins', 'changement de huile'),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Suivie d'entretiens",
              style: TextStyle(
                color: kprimary,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            const Text(
              "Vous Pouvez suivre tous types d'entretiens\nen relation de votre vehicule.",
              style: TextStyle(
                color: kgrey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: entretiensList.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(vertical: 5),
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
                                '${entretiensList[i].details!}',
                                style: TextStyle(
                                  color: kprimary,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 16,
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
