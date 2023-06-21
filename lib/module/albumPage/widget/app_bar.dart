// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumAppBar extends StatelessWidget {
  AlbumAppBar({
    super.key,
    required this.bgColor_album,
    required this.title_album,
    required this.image_size,
    required this.scrollController,
  });

  final Color bgColor_album;
  final String title_album;
  final double image_size;
  final ScrollController scrollController;
  double title_opacity = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 60,
        width: Get.mediaQuery.size.width,
        color: (scrollController.offset < 215)
            ? Colors.transparent
            : bgColor_album,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20.0,
            ),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 25,
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5.0,
                ),
                (scrollController.offset < 205)
                    ? const SizedBox.shrink()
                    : AnimatedOpacity(
                        duration: const Duration(milliseconds: 800),
                        opacity: (scrollController.offset > 215) ? 1 : 0,
                        child: Text(
                          title_album,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
