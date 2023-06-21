// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/module/albumPage/controller/playing_song.dart';

class Album { 
  List<Color>? background_gradient;
  int? album_img;
  String? title_album;
  String? profile_img;
  String? artist;
  String? album_year;
  List? song_list;
  Color? bgColor_album;

  Album(
      {required this.background_gradient,
      required this.album_img,
      required this.title_album,
      required this.profile_img,
      required this.artist,
      required this.album_year,
      required this.song_list,
      required this.bgColor_album});
  
}


