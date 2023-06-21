import 'package:flutter/cupertino.dart';
import 'package:spotify/models/albums/Bruno%20Mars/unorthodox_jukebox.dart';
import 'package:spotify/module/albumPage/view/album_templat.dart';

class BrunoMars extends StatelessWidget {
  const BrunoMars({super.key});

  @override
  Widget build(BuildContext context) {
    return AlbumTemplate(
      album_img: 2,
      title_album: "Unorthodox Jukebox",
      profile_img:
          "https://i.scdn.co/image/ab67616d0000b2736f9e6abbd6fa43ac3cdbeee0",
      artist: "Bruno Mars",
      album_year: "Album.2012",
      song_list: uJ_copied,
      bgColor_album: const Color.fromARGB(255, 69, 58, 38),
    );
  }
}
