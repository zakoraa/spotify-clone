import 'package:flutter/material.dart';

import 'package:spotify/models/albums/Rex%20Orange%20County/pony.dart';
import 'package:spotify/module/albumPage/view/album_templat.dart';

class RexOrangeCounty extends StatefulWidget {
  const RexOrangeCounty({super.key});

  @override
  State<RexOrangeCounty> createState() => _RexOrangeCountyState();
}

class _RexOrangeCountyState extends State<RexOrangeCounty> {
  @override
  Widget build(BuildContext context) {
    return AlbumTemplate(
      album_img: 1,
      title_album: "Pony",
      profile_img:
          "https://i.scdn.co/image/ab67706c0000da841ce3928392efee655e147c87",
      artist: "Rex Orange County",
      album_year: "Album.2019",
      song_list: pony_copied,
      bgColor_album: const Color.fromARGB(255, 120, 120, 120),
    );
  }
}
