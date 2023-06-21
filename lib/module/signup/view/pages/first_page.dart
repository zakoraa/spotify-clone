import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:spotify/routes/route_name.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Widget _socialMedia(String txt, String logo, {double? wdth}) {
    return Container(
      width: 300,
      height: 45,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(45)),
      child: Material(
        borderRadius: BorderRadius.circular(45),
        elevation: 0.0,
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.transparent,
          borderRadius: BorderRadius.circular(45),
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: (wdth == null) ? 15 : 20,
              ),
              Image.asset(logo),
              const SizedBox(
                width: 50,
              ),
              Text(
                txt,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
                  _socialMedia(
                      "Continue with Google", "assets/Component 37.png"),
                  const SizedBox(
                    height: 10,
                  ),
                  _socialMedia("Continue with Facebook", "assets/facebook.png"),
                  const SizedBox(
                    height: 10,
                  ),
                  _socialMedia("Continue with Apple", "assets/Vector.png",
                      wdth: 20),
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
