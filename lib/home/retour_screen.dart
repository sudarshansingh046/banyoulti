import 'package:banyoulti/model/entretiens_model.dart';
import 'package:banyoulti/model/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class RetourScreen extends StatefulWidget {
  const RetourScreen({Key? key}) : super(key: key);

  @override
  State<RetourScreen> createState() => _RetourScreenState();
}

class _RetourScreenState extends State<RetourScreen> {
  final nameController = TextEditingController();
  bool switchOn = false;
  @override
  List<String> list = ['option1', 'option2', 'option3', 'option4'];
  String _selectedCategory = 'Categorie:';
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Retour",
                style: TextStyle(
                  color: kprimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 30),
              const Text(
                "Sujet",
                style: TextStyle(
                  color: kprimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: 'Nom de rappel:'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: 'Description:'),
              ),
              const SizedBox(height: 20),
              DropdownButton<String>(
                hint: Text(_selectedCategory),
                dropdownColor: kgrey,
                isExpanded: true,
                items: list.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Row(
                      children: [
                        Text(
                          dropDownStringItem,
                        )
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value!;
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text(
                "Date de rappel",
                style: TextStyle(
                  color: kprimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: '03, Avril 2022'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Repitition",
                    style: TextStyle(
                      color: kprimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Switch(
                      activeColor: kprimary,
                      value: switchOn,
                      onChanged: (value) {
                        setState(() {
                          switchOn = value;
                        });
                      }),
                ],
              ),
              SizedBox(height: 10),
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: 'Une seule fois'),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      height: 50,
                      color: kprimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: const Text(
                        'DEFINIR',
                        style: TextStyle(
                          color: kwhite,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: MaterialButton(
                      height: 50,
                      color: kwhite,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: const Text(
                        'ANNULEE',
                        style: TextStyle(
                          color: kprimary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
