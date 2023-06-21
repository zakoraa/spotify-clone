import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Not Found 404",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,
          color: Colors.grey,),
        ),
      ),
    );
  }
}
