import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: Get.mediaQuery.size.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.network(
              "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
              fit: BoxFit.contain,
              // height: 50,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.network(
              "https://cdn1.iconfinder.com/data/icons/logotypes/32/circle-twitter-512.png",
              fit: BoxFit.contain,
              height: 40,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.network(
              "https://cdn1.iconfinder.com/data/icons/logotypes/32/circle-facebook_-512.png",
              fit: BoxFit.contain,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
