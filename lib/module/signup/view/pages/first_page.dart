import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:spotify/routes/route_name.dart';

import '../../widget/continue_with.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset("assets/b.webp", fit: BoxFit.cover),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 43,
                      height: 43,
                      transform: Matrix4.translationValues(0, 25, 10),
                      child: Image.asset(
                        "assets/Logo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                children: [
                  const Center(
                      child: Text(
                    "Millions of Songs.",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
                  const Center(
                      child: Text("Free on Spotify.",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ))),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 300,
                    height: 45,
                    child: Material(
                      borderRadius: BorderRadius.circular(45),
                      elevation: 0.0,
                      color: const Color(0xFF1ED760),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        borderRadius: BorderRadius.circular(45),
                        onTap: () {
                          Get.toNamed(RouteName.email_signUp);
                        },
                        child: const Center(
                          child: Text(
                            "Sign Up free",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ContinueWith(
                      text: "Continue with Google",
                      logo: "assets/Component 37.png"),
                  const SizedBox(
                    height: 10,
                  ),
                  const ContinueWith(
                      text: "Continue with Facebook",
                      logo: "assets/facebook.png"),
                  const SizedBox(
                    height: 10,
                  ),
                  const ContinueWith(
                      text: "Continue with Apple",
                      logo: "assets/Vector.png",
                      width: 20),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                    width: 50,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        Get.toNamed(RouteName.login_view);
                      },
                      child: const Center(
                          child: Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
