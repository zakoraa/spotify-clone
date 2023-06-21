// ignore_for_file: equal_keys_in_map, unnecessary_string_interpolations, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/module/favoritePage/controller/favorite_controller.dart';

class ListGenerateWidget extends StatelessWidget {
  ListGenerateWidget({super.key, required this.title_album});
  final String? title_album;

  final FavoriteController favoriteController = Get.find<FavoriteController>();
  @override
  Widget build(BuildContext context) {
    RxMap<dynamic, String> content = {
      GestureDetector(
          onTap: () {
            if (!favoriteController.favoriteAlbum.contains(title_album)) {
              favoriteController.addToFavoriteAlbum(title_album);
            } else {
              favoriteController.removeFromFavoriteAlbum(title_album);
            }
            Get.back();
          },
          child: (favoriteController.favoriteAlbum.contains(title_album))
              ? const Icon(
                  Icons.favorite_rounded,
                  color: Color.fromARGB(255, 33, 252, 40),
                )
              : const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                )): (favoriteController.favoriteAlbum.contains(title_album))
          ? "Liked"
          : "Like",
      const Icon(
        Icons.person_outline,
        color: Colors.grey,
      ): "Artist",
      const Icon(Icons.album_outlined, color: Colors.grey): "To Album Radio",
      const Icon(Icons.my_library_music_outlined, color: Colors.grey):
          "Add to Your Playlist",
      const Icon(Icons.favorite_outline_outlined, color: Colors.grey):
          "Like All Songs",
      const Icon(Icons.share_outlined, color: Colors.grey): "Share",
    }.obs;
    return Column(
      children: List.generate(
          content.length,
          (index) => Column(
                children: [
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    children: [
                      Obx(
                        () => GestureDetector(
                          onTap: () {
                            // favoriteController.addToFavoriteAlbum(title_a);
                          },
                          child: content.keys.elementAt(index),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "${content.values.elementAt(index)}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )),
    );
  }
}
