import 'package:flutter/material.dart';

class ContinueWith extends StatelessWidget {
  const ContinueWith({
    super.key,
    this.width,
    required this.logo,
    required this.text,
  });

  final double? width;
  final String logo;
  final String text;

  @override
  Widget build(BuildContext context) {
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
                width: (width == null) ? 15 : 20,
              ),
              Image.asset(logo),
              const SizedBox(
                width: 50,
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
