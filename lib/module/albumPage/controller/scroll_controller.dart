import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GetScrollController extends GetxController {
  ScrollController scrollC = ScrollController();
  RxDouble imageSize = 0.0.obs;
  RxDouble initialSize = 240.0.obs;

  @override
  void onInit() {
    imageSize = initialSize;

    scrollC.addListener(() {
      imageSize.value = initialSize.value - scrollC.offset;
          print(imageSize);
      if (imageSize.value > 0 && imageSize.value < initialSize.value) {
        update();
      }
    });
    super.onInit();
  }
}
