// ignore_for_file: implementation_imports

import 'dart:ui';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify/models/albums/MCR/black_parade.dart';
import 'package:spotify/module/albumPage/view/album_templat.dart';

class MCR extends StatelessWidget {
  const MCR({super.key});

  @override
  Widget build(BuildContext context) {
    return AlbumTemplate(
      album_img: 5,
      title_album: "The Black Parade",
      profile_img:
          "https://i.scdn.co/image/ab6761610000e5eb9c00ad0308287b38b8fdabc2",
      artist: "My Chemical Romance",
      album_year: "Album.2006",
      song_list: blackParade,
      bgColor_album: const Color.fromARGB(255, 120, 120, 120),
    );
  }
}
