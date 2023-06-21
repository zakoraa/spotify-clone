// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/module/albumPage/controller/playing_song.dart';

import '../../../list/list_singer.dart';

class SongDetail extends StatelessWidget {
  const SongDetail(
      {super.key,
      required this.bgColor_album,
      required this.title_album,
      required this.album_img,
      required this.artist,
      required this.song_list});

  final Color? bgColor_album;
  final int? album_img;
  final String? title_album, artist;
  final List? song_list;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<PlayingSongController>();
    return Container(
      height: Get.mediaQuery.size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            bgColor_album!,
            const Color.fromARGB(255, 17, 16, 17),
          ])),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                Column(
                  children: [
                    const Text("Playing from Album"),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      "$title_album",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.mediaQuery.size.height * 0.5,
                    width: Get.mediaQuery.size.width,
                    child: Image.network(
                      "${singerList_homePage[album_img!].img}",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: Get.mediaQuery.size.width * 0.75,
                            child: Text(
                              "${song_list![controller.selectedIndex].song_title}",
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 3.0,
                          ),
                          Text(
                            "$artist",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.favorite_border_outlined),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
