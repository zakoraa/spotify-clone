// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListTilePlaylist extends StatelessWidget {
  const ListTilePlaylist({
    super.key,
    required this.img,
    required this.title,
    required this.sub,
  });

  final img;
  final String title;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(img),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        sub,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
