// ignore_for_file: non_constant_identifier_names, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/module/favoritePage/controller/favorite_controller.dart';
import 'package:spotify/module/albumPage/widget/song_detail.dart';
import '../controller/playing_song.dart';
import '../../../list/list_singer.dart';

class SongIsPlaying extends StatelessWidget {
  SongIsPlaying({
    Key? key,
    required this.bgColor_album,
    required this.album_img,
    required this.song_list,
    required this.title_album,
    required this.artist,
  }) : super(key: key);

  final List? song_list;
  final Color? bgColor_album;
  final int? album_img;
  final String? title_album, artist;

  final controller = Get.find<PlayingSongController>();

  final favoriteController = Get.find<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => (controller.isContainerShown.value)
        ? Positioned(
            bottom: 1,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Container(
                height: 60,
                width: Get.mediaQuery.size.width - 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: bgColor_album,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                            isScrollControlled: true,
                            enableDrag: false,
                            SongDetail(
                              song_list: song_list,
                              bgColor_album: bgColor_album,
                              album_img: album_img,
                              title_album: title_album,
                              artist: artist,
                            ));
                      },
                      child: Container(
                        color: Colors.transparent,
                        width: 260,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(
                                      "${singerList_homePage[album_img!].img}")),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            SizedBox(
                              height: Get.mediaQuery.size.height,
                              width: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    song_list![controller.selectedIndex]
                                        .song_title,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    "${singerList_homePage[album_img!].name}",
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.playlist_add_rounded,
                              
                              size: 35,
                            )),
                        const SizedBox(
                          width: 10.0,
                        ),
                        GestureDetector(
                            onTap: () {
                              if (!favoriteController.favoriteSong.contains(
                                  song_list![controller.selectedIndex]
                                      .song_title)) {
                                favoriteController.addToFavoriteSong(
                                    song_list![controller.selectedIndex]
                                        .song_title);
                              } else {
                                favoriteController.removeFromFavoriteSong(
                                    song_list![controller.selectedIndex]
                                        .song_title);
                              }
                            },
                            child: (favoriteController.favoriteSong.contains(
                                    song_list![controller.selectedIndex]
                                        .song_title))
                                ? const Icon(
                                    Icons.favorite_sharp,
                                    color: Color.fromARGB(255, 33, 252, 40),
                                    size: 30,
                                  )
                                : const Icon(
                                    Icons.favorite_outline,
                                    
                                    size: 30,
                                  )),
                        const SizedBox(
                          width: 10.0,
                        ),
                        (controller.isPlayed.value)
                            ? GestureDetector(
                                onTap: () {
                                  controller.playSong();
                                },
                                child: const Icon(
                                  Icons.play_arrow,
                                  size: 35,
                                  
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  controller.playSong();
                                },
                                child: const Icon(
                                  Icons.pause,
                                  size: 35,
                                  
                                ),
                              ),
                        const SizedBox(
                          width: 10.0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        : const SizedBox.shrink());
  }
}
