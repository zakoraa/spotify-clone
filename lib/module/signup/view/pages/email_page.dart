import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:spotify/authentication/auth_controller.dart';
import '../../../../routes/route_name.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  // AuthController controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                    const Text(
                      "create account",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
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
                      const Text(
                        "What's your email?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: TextField(
                          // controller: controller.emailController,
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
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: const Text(
                          "You’ll need to confirm this email later.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: SizedBox(
                          height: 40,
                          width: 80,
                          child: Material(
                            color: const Color(0xFF535353),
                            borderRadius: BorderRadius.circular(20),
                            elevation: 0.0,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.transparent,
                              onTap: () {
                                
                                // controller.addData(controller.emailController.text,context,RouteName.password_signUp);
                              },
                              child: const Center(
                                child: Text(
                                  "Next",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

 
}
