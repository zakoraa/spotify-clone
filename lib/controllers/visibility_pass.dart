import 'package:get/get.dart';

class VisibilityPassController extends GetxController {
  var visibilityPass = false.obs;

  void changeVisibilityPass() {
    visibilityPass.value = !visibilityPass.value;
  }
}
