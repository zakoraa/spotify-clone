// ignore_for_file: non_constant_identifier_names

class Playlist {
  String? img;
  String? name;
  String? likes;

  Playlist({required this.img, required this.name, required this.likes});
}

List<Playlist> playlist = [
  Playlist(
      img: "https://i.scdn.co/image/ab67616d0000b273d254ca497999ae980a5a38c5",
      name: "Queeeen",
      likes: "7 likes"),
  Playlist(
      img:
          "https://www.thakzhan.de/content/images/2022/05/Level-1---Spotify-Cover-1.jpg",
      name: "Stress Reliever",
      likes: "12 likes"),
  Playlist(
      img:
          "https://www.thakzhan.de/content/images/2022/05/Level-2---Spotify-Cover-version-2-1.jpg",
      name: "Jazz",
      likes: "16 likes"),
  Playlist(
      img:
          "https://www.thakzhan.de/content/images/2022/05/Dreams---Spotify-Cover-1.png",
      name: "Saddd",
      likes: "23 likes"),
];

List<Playlist> playlist_copied = List.from(playlist);
