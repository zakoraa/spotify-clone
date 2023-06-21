import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:spotify/module/loginPage/view/login_view.dart';
import 'package:spotify/pages/main_page.dart';
import 'package:spotify/module/signup/view/pages/first_page.dart';
import 'package:spotify/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
            prefixIconColor: Colors.grey,
            suffixIconColor: Colors.grey,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          // useMaterial3: true,
          scaffoldBackgroundColor: const Color.fromARGB(255, 17, 16, 17),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          textTheme: const TextTheme(
            bodyText2:
                TextStyle(color: Colors.white, fontFamily: "Avenir Next"),
          )),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      getPages: AppPage.pages,
    );
  }
}
