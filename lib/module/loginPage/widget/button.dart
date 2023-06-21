import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:spotify/authentication/auth_controller.dart';
import 'package:spotify/routes/route_name.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // AuthController authController = Get.find<AuthController>();
    return SizedBox(
      height: 50,
      width: Get.mediaQuery.size.width * 0.8,
      child: Material(
        borderRadius: BorderRadius.circular(45),
        elevation: 0.0,
        color: const Color(0xFF1ED760),
        child: InkWell(
          splashColor: Colors.transparent,
          borderRadius: BorderRadius.circular(45),
          onTap: () {
            // authController.loginWithFirebase(
            //     context, RouteName.main_page);
          }
          // Get.toNamed(RouteName.page1_signUp)
          ,
          child: const Center(
            child: Text(
              "Login",
              style: TextStyle(
                  color: Color.fromARGB(225, 241, 235, 235),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
