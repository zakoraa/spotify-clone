import 'package:flutter/material.dart';
import 'package:spotify/module/albumPage/view/album_templat.dart';
import '../../../models/albums/Queen/a_night_at_the_opera.dart';

class Queen extends StatelessWidget {
  const Queen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlbumTemplate(
      album_img: 3,
      title_album: "A Night At The Opera",
      profile_img:
          "https://i.scdn.co/image/ab67616d0000b273bb19d0c22d5709c9d73c8263",
      artist: "Queen",
      album_year: "Album.1975",
      song_list: anato_copied,
      bgColor_album: const Color.fromARGB(255, 120, 120, 120),
    );
  }
}
