import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:spotify/authentication/auth_controller.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  // AuthController controller = Get.find<AuthController>();

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
                      _text("Create account", 16, weight: FontWeight.bold),
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
                        _text("What's your name?", 25, weight: FontWeight.bold),
                        const SizedBox(
                          height: 3,
                        ),
                        TextField(
                          // controller: controller.nameController,
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
                            child: _text(
                                "This appears on your spotify profile", 12)),
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
                              _text(
                                  "By tapping on “Create account”, you agree to the spotify Terms of Use. ",
                                  12),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {},
                                  child: _text("Terms of Use", 12,
                                      color: 0xFF1ED760)),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {},
                                  child: _text("Privacy Policy", 12,
                                      color: 0xFF1ED760)),
                              const SizedBox(
                                height: 20,
                              ),
                              _text(
                                  "To learn more about how Spotify collect, uses, shares and protects your personal data, Please see the Spotify Privacy Policy.",
                                  12)
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

                                //  controller.addDataToFirebase(context, RouteName.favoriteSinger_signUp);                                },
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

  Widget _text(String txt, double? size, {FontWeight? weight, dynamic color}) {
    return Text(
      txt,
      style: TextStyle(
          fontWeight: weight,
          color: (color == null) ? Colors.white : Color(color),
          fontSize: size),
    );
  }
}
