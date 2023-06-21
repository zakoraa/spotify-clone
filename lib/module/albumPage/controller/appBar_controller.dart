import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarController extends GetxController {
  ScrollController _scrollController = ScrollController();
  var isColored = false.obs;


  @override
  void onInit() {
    super.onInit();
    _scrollController.addListener(() {
      if (_scrollController.offset > Get.mediaQuery.size.height * 0.3) {
        isColored.value = true;
      } else {
        isColored.value = false;
      }
    });
  }
}
