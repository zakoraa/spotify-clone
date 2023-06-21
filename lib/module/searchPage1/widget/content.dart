// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ContentSearchView1 extends StatelessWidget {
   ContentSearchView1({
    Key? key,
    required this.txt,required this.img1,required this.img2,
  }) : super(key: key);

  String? txt;
  String? img1;
  String? img2;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txt!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                img1!,
                width: 165,
                height: 100,
                fit: BoxFit.contain,
              ),
              Image.asset(
                img2!,
                width: 165,
                height: 100,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
