// ignore_for_file: non_constant_identifier_names


import 'package:spotify/models/albums/album_songs.dart';

List<AlbumSongs> pony_object_list = [
  AlbumSongs(song_title: "It Gets Better", duration: "3:33",isLiked: false),
  AlbumSongs(song_title: "Every Way", duration: "2:13",isLiked: false),
  AlbumSongs(song_title: "Never Had the Balls", duration: "3:57",isLiked: false),
  AlbumSongs(song_title: "It’s Not the Same Anymore", duration: "6:26",isLiked: false),
  AlbumSongs(song_title: "Pluto Projector", duration: "4:28",isLiked: false),
  AlbumSongs(song_title: "Laser Lights", duration: "2:11",isLiked: false),
  AlbumSongs(song_title: "Stressed Out", duration: "1:45",isLiked: false),
  AlbumSongs(song_title: "10/10", duration: "2:26",isLiked: false),
  AlbumSongs(song_title: "Always", duration: "3:17",isLiked: false),
  AlbumSongs(song_title: "Face to Face", duration: "3:40",isLiked: false)
];

List<AlbumSongs> pony_copied = List.from(pony_object_list);
