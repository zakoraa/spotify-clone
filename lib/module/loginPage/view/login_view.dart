// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:spotify/authentication/auth_controller.dart';
import 'package:spotify/controllers/visibility_pass.dart';
import 'package:spotify/module/loginPage/widget/button.dart';
import 'package:spotify/module/loginPage/widget/social_media.dart';
import 'package:spotify/module/loginPage/widget/text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    VisibilityPassController visibilityPassController =
        Get.put(VisibilityPassController());
    // AuthController authController = Get.put(AuthController());

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Center(
              child: SizedBox(
                // height: Get.mediaQuery.size.height,
                width: Get.mediaQuery.size.width * 0.95,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/spotify.png",
                        height: Get.mediaQuery.size.height * 0.2,
                        width: Get.mediaQuery.size.width * 0.5,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                       TextFieldWidget(
                        // controller: authController.emailController,
                        obscureText: false,
                        hintText: "email",
                        prefixIcon: Icon(Icons.email),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Obx(
                        () => TextFieldWidget(
                          // controller: authController.passwordController,
                          
                          obscureText:
                              (visibilityPassController.visibilityPass.value)
                                  ? false
                                  : true,
                          hintText: "password",
                          prefixIcon: const Icon(Icons.key),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              visibilityPassController.changeVisibilityPass();
                            },
                            child: Icon(
                                (visibilityPassController.visibilityPass.value)
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const ButtonWidget(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        "or continue with",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const SocialMedia(),
                      
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
