// ignore_for_file: unnecessary_brace_in_string_interps, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/module/favoritePage/controller/favorite_controller.dart';
import 'package:spotify/module/albumPage/controller/playing_song.dart';

import '../../../widgets/more.dart';

class Description extends StatelessWidget {
  Description(
      {super.key,
      required this.title_album,
      required this.profile_img,
      required this.artist,
      required this.album_img,
      required this.album_year});
  final String? title_album,profile_img,artist,album_year;
  final int? album_img;

  final favoriteController = Get.find<FavoriteController>();
  final controller = Get.find<PlayingSongController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            const Color.fromARGB(255, 17, 16, 17).withOpacity(0),
            const Color.fromARGB(255, 17, 16, 17).withOpacity(0.5),
            const Color.fromARGB(255, 17, 16, 17).withOpacity(1),
          ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${title_album}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                  "${profile_img}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "${artist}",
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "${album_year}",
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Obx(() => GestureDetector(
                                          onTap: () { if (!favoriteController.favoriteAlbum.contains(
                                  title_album)) {
                                favoriteController.addToFavoriteAlbum(title_album);
                              } else {
                                favoriteController.removeFromFavoriteAlbum(title_album);
                              }},
                                          child: (favoriteController.favoriteAlbum.contains(
                                    title_album))
                                              ? const Icon(
                                                  Icons.favorite_rounded,
                                                  color: Color.fromARGB(
                                                      255, 0, 207, 7),
                                                )
                                              : const Icon(
                                                  Icons.favorite_outline,
                                                  color: Colors.grey,
                                                )
                                        )),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    MoreIconButton(
                                      album_img: album_img,
                                      title_album: title_album,
                                      artist: artist,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Obx(() => FloatingActionButton(
                          splashColor: Colors.transparent,
                          backgroundColor: const Color.fromARGB(255, 0, 207, 7),
                          onPressed: () {
                            controller.playSong();
                          },
                          child: (controller.isPlayed.value == false)
                              ? const Icon(
                                  Icons.pause,
                                  color: Colors.black,
                                  size: 35,
                                )
                              : const Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                  size: 35,
                                ),
                        )),
                  ],
                )
              ],
            ),
          ),
          // const SizedBox(
          //   height: 10.0,
          // ),
        ],
      ),
    );
  }
}
