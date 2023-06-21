// ignore_for_file: non_constant_identifier_names

import 'package:spotify/models/albums/album_songs.dart';

class Anato {
  String? title;
  String? duration;

  Anato(
      {required this.title, required this.duration});
}

List<AlbumSongs> anato_object_list = [
  AlbumSongs(song_title: "Love Of My Life ", duration: "3:38",isLiked: false),
  AlbumSongs(song_title: "Death On Two Legs (Dedicated To...)", duration: "3:44",isLiked: false),
  AlbumSongs(song_title: "Good Company", duration: "3:24",isLiked: false),
  AlbumSongs(song_title: "Sweet Lady", duration: "4:02",isLiked: false),
  AlbumSongs(song_title: "God Save The Queen", duration: "1:15",isLiked: false),
  AlbumSongs(song_title: "I'm In Love With My Car", duration: "3:05",isLiked: false),
  AlbumSongs(song_title: "The Prophet's Song", duration: "8:21",isLiked: false),
  AlbumSongs(song_title: "You're My Best Friend", duration: "2:51",isLiked: false),
  AlbumSongs(song_title: "Lazing On A Sunday Afternoon", duration: "1:08",isLiked: false),
  AlbumSongs(song_title: "Seaside Rendezvous", duration: "2:14",isLiked: false),
  AlbumSongs(song_title: "Bohemian Rhapsody", duration: "5:54",isLiked: false),
  AlbumSongs(song_title: "'39", duration: "3:31",isLiked: false),
];

List<AlbumSongs> anato_copied = List.from(anato_object_list);

/* 
Love Of My Life
3:38

Death On Two Legs (Dedicated To...)
3:44

Good Company
3:24
Sweet Lady
4:02
God Save The Queen
1:15

I'm In Love With My Car
3:05
The Prophet's Song
8:21

You're My Best Friend
2:51
Lazing On A Sunday Afternoon
1:08
Seaside Rendezvous
2:14
Bohemian Rhapsody
5:54

'39
3:31
*/