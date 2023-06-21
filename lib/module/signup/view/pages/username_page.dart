import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/text_widget.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0.0,
                          mini: true,
                          onPressed: () => Get.back(),
                          child: Image.asset(
                            "assets/back.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const TextWidget(
                          text: "Create account",
                          size: 16,
                          weight: FontWeight.bold),
                      const SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(
                            text: "What's your name?",
                            size: 25,
                            weight: FontWeight.bold),
                        const SizedBox(
                          height: 3,
                        ),
                        TextField(
                          cursorColor: Colors.white,
                          cursorHeight: 16,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                          decoration: InputDecoration(
                              fillColor: const Color(0xFF777777),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  ))),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: const TextWidget(
                                text: "This appears on your spotify profile",
                                size: 12)),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: const Color(0xFF777777),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextWidget(
                                  text:
                                      "By tapping on “Create account”, you agree to the spotify Terms of Use. ",
                                  size: 12),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {},
                                  child: const TextWidget(
                                      text: "Terms of Use",
                                      size: 12,
                                      color: 0xFF1ED760)),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {},
                                  child: const TextWidget(
                                      text: "Privacy Policy",
                                      size: 12,
                                      color: 0xFF1ED760)),
                              const SizedBox(
                                height: 20,
                              ),
                              const TextWidget(
                                  text:
                                      "To learn more about how Spotify collect, uses, shares and protects your personal data, Please see the Spotify Privacy Policy.",
                                  size: 12)
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                        ),
                        Center(
                          child: SizedBox(
                            height: 40,
                            width: 160,
                            child: Material(
                              color: const Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(20),
                              elevation: 0.0,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Colors.transparent,
                                onTap: () {},
                                child: const Center(
                                  child: Text(
                                    "Create an account",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
