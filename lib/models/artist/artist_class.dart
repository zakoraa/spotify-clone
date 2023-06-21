import 'package:flutter/material.dart';

abstract class Artist {
  List<Map<String, dynamic>> artist = [
    {
      "id": 1,
      "name": "Rex Orange County",
      "artist_profile_image":
          "https://i.scdn.co/image/ab67706c0000da841ce3928392efee655e147c87",
          
      "Albums": <String, dynamic>{
        "album_id": 11,
        "album_name": "Pony",
        "album_year": "2019",
        "album_image":
            "https://i.scdn.co/image/ab67616d0000b273733e6d7818eef87d20df86b5",
        "album_color": const Color.fromARGB(255, 120, 120, 120),
        "album_songs": <Map<String,dynamic>>[
          {
            "song_id": 111,
            "song_title": "It Gets Better",
            "song_duration": "3:33"
          },
          {"song_id": 112, "song_title": "Every Way", "song_duration": "2:13"},
          {
            "song_id": 113,
            "song_title": "Never Had the Balls",
            "song_duration": "3:57"
          },
          {
            "song_id": 114,
            "song_title": "It’s Not the Same Anymore",
            "song_duration": "6:26"
          },
          {
            "song_id": 115,
            "song_title": "Pluto Projector",
            "song_duration": "4:28"
          },
          {
            "song_id": 116,
            "song_title": "Laser Lights",
            "song_duration": "2:11"
          },
          {
            "song_id": 117,
            "song_title": "Stressed Out",
            "song_duration": "1:45"
          },
          {"song_id": 118, "song_title": "10/10", "song_duration": "2:26"},
          {"song_id": 119, "song_title": "Always", "song_duration": "3:17"},
          {
            "song_id": 120,
            "song_title": "Face to Face",
            "song_duration": "3:40"
          }
        ]
      },
    }
  ];
}
