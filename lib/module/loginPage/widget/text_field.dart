// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.obscureText,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.controller,
  });

  final obscureText;
  final hintText;
  final prefixIcon;
  final suffixIcon;
  final controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        width: Get.mediaQuery.size.width * 0.8,
        // padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          controller: controller,
          cursorColor: Colors.white,
          obscureText: obscureText,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: Colors.grey,
                )),
            // disabledBorder:
          ),
        ),
      ),
    );
  }
}
