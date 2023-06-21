// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unused_field, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/module/albumPage/widget/app_bar.dart';
import 'package:spotify/module/albumPage/widget/songList_widget.dart';
import 'package:spotify/module/albumPage/widget/song_is_playing.dart';
import 'package:spotify/module/albumPage/widget/description.dart';
import '../../favoritePage/controller/favorite_controller.dart';
import '../controller/playing_song.dart';
import '../../../list/list_singer.dart';

class AlbumTemplate extends StatefulWidget {
  const AlbumTemplate({
    Key? key,
    this.album_img,
    this.title_album,
    this.profile_img,
    this.artist,
    this.album_year,
    this.song_list,
    this.bgColor_album,
  }) : super(key: key);

  final int? album_img;
  final String? title_album;
  final String? profile_img;
  final String? artist;
  final String? album_year;
  final List? song_list;
  final Color? bgColor_album;


  @override
  State<AlbumTemplate> createState() => _AlbumTemplateState();
}

class _AlbumTemplateState extends State<AlbumTemplate> {
  final controller = Get.put(PlayingSongController());
  final FavoriteController favoriteController = Get.put(FavoriteController());
  final ScrollController scrollController = ScrollController();

  double image_size = 0;
  double imageInitialSize = 215;
  double image_opacity = 1;
  double container_height = Get.mediaQuery.size.height * 0.4;
  double containerInitialHeight = Get.mediaQuery.size.height * 0.4;
  @override
  void initState() {
    image_size = imageInitialSize;
    scrollController.addListener(() {
      image_size = imageInitialSize - scrollController.offset;
      // print(scrollController.offset);
      // print("image_size : ${image_size}");
      // print("imageInitialSize : ${imageInitialSize}");
      if (image_size < 0) {
        image_size = 0;
      }
      image_opacity = image_size / imageInitialSize;
      // print("image_opacity : ${image_opacity}");
      container_height = containerInitialHeight - scrollController.offset;
      if (container_height < 0) {
        container_height = 0;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  widget.bgColor_album!,
                  widget.bgColor_album!,
                  widget.bgColor_album!,
                  const Color.fromARGB(255, 17, 16, 17),
                  const Color.fromARGB(255, 17, 16, 17),
                ])),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: container_height,
              width: Get.mediaQuery.size.width,
              color: widget.bgColor_album,
              child: Center(
                  child: Opacity(
                opacity: image_opacity.clamp(0, 1),
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 40.0,
                        spreadRadius: 15.0)
                  ]),
                  child: Image.network(
                    "${singerList_homePage[widget.album_img!].img}",
                    height: image_size,
                    width: image_size,
                  ),
                ),
              )),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: SizedBox(
                  width: Get.mediaQuery.size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.mediaQuery.size.height * 0.4,
                      ),
                      Description(
                        album_year: widget.album_year,
                        title_album: widget.title_album,
                        profile_img: widget.profile_img,
                        artist: widget.artist,
                        album_img: widget.album_img,
                        
                        
                      ),
                      SongListWidget(
                          song_list: widget.song_list, artist: widget.artist),
                      (controller.isContainerShown.value)
                          ? const SizedBox(
                              height: 55.0,
                            )
                          : const SizedBox.shrink()
                    ],
                  ),
                ),
              ),
            ),
          ),
          SongIsPlaying(
              song_list: widget.song_list,
              bgColor_album: widget.bgColor_album,
              album_img: widget.album_img,
              title_album: widget.title_album,
              artist: widget.artist,
          ),
          AlbumAppBar(
            scrollController: scrollController,
            bgColor_album: widget.bgColor_album!,
            title_album: widget.title_album!,
            image_size: image_size,
          )
        ],
      ),
    );
  }
}
