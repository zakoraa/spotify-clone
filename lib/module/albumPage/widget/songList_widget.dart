// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/module/favoritePage/controller/favorite_controller.dart';
import 'package:spotify/module/albumPage/controller/playing_song.dart';

class SongListWidget extends StatelessWidget {
  SongListWidget({super.key, this.song_list, this.artist});

  final List? song_list;
  final String? artist;

  PlayingSongController controller = Get.find<PlayingSongController>();

  final favoriteController = Get.find<FavoriteController>();

  void sortList() {
    song_list!.sort(
      (a, b) =>
          a.song_title.toLowerCase().compareTo(b.song_title.toLowerCase()),
    );
  }

  @override
  Widget build(BuildContext context) {
    sortList();
    return Container(
      color: const Color.fromARGB(255, 17, 16, 17),
      child: Column(
          children: List.generate(song_list!.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: GestureDetector(
            onTap: () {
              controller.selectedIndex = index;

              controller.isContainerShown.value = false;

              return controller.showContainer();
            },
            child: Container(
              color: Colors.transparent,
              width: Get.mediaQuery.size.width,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 7.0,
                          ),
                          SizedBox(
                            height: 33,
                            width: 25,
                            child: Text(
                              (index + 1).toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 175, 172, 172)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: (favoriteController.favoriteSong
                                    .contains(song_list![index].song_title))
                                ? 230
                                : 270,
                            child: Text(
                              "${song_list![index].song_title}",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            "$artist",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 175, 172, 172),
                                fontSize: 13),
                          ),
                          const SizedBox(
                            width: 50.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: (favoriteController.favoriteSong
                                      .contains(song_list![index].song_title)
                                  ? const Center(
                                      child: Icon(
                                        Icons.favorite_rounded,
                                        color: Color.fromARGB(255, 0, 207, 7),
                                        size: 25,
                                      ),
                                    )
                                  : const SizedBox.shrink())),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            "${song_list![index].duration}",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      })),
    );
  }
}
