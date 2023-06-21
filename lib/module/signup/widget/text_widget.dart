import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    required this.size,
    this.weight,
    this.color,
  });

  final String text;
  final FontWeight? weight;
  final double? size;
  final dynamic color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: weight,
          color: (color == null) ? Colors.white : Color(color),
          fontSize: size),
    );
  }
}
