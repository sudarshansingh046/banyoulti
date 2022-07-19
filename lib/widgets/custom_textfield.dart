import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

Widget customTextField(
  String prefixIcon,
  String hint,
  TextEditingController controller, {
  bool isPassword = false,
  bool passCheck = false,
  Function? onSuffixIconTap,
}) {
  return Container(
    height: 50,
    width: Get.width * 0.85,
    padding: const EdgeInsets.only(left: 20, right: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(35),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 4,
          blurRadius: 4,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: TextField(
      // keyboardType: keyboardType,
      obscureText: passCheck,
      showCursor: true,
      style: const TextStyle(
        fontSize: 12,
        fontStyle: FontStyle.normal,
        color: kblack,
      ),
      cursorColor: kblack,
      controller: controller,
      readOnly: false,
      maxLength: 10,
      decoration: InputDecoration(
        prefixIcon: Container(
          margin: const EdgeInsets.only(right: 10),
          width: 45,
          child: Row(
            children: [
              Image.asset(
                prefixIcon,
                cacheHeight: 25,
                cacheWidth: 25,
                color: korange,
              ),
              const SizedBox(width: 15),
              Container(
                height: 20,
                width: 2,
                color: kgrey,
              ),
            ],
          ),
        ),
        suffixIcon: isPassword
            ? InkWell(
                onTap: () {
                  onSuffixIconTap!();
                },
                child: Icon(
                  passCheck ? Icons.visibility : Icons.visibility_off,
                  color: kgrey,
                ),
              )
            : const SizedBox(),
        counterText: '',
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        hintText: hint,
        contentPadding: const EdgeInsets.only(top: 17),
        alignLabelWithHint: true,
        hintStyle: const TextStyle(
          fontSize: 12,
          fontStyle: FontStyle.normal,
          color: kgrey,
        ),
        border: InputBorder.none,
      ),
    ),
  );
}
