import 'package:get/get.dart';
import 'package:spotify/models/albums/album_class.dart';

class FavoriteController extends GetxController {
  var favoriteAlbum = [].obs;
  var favoriteSong = [].obs;

  void addToFavoriteAlbum(item) {
    favoriteAlbum.add(item);
  }

  void removeFromFavoriteAlbum(item) {
    favoriteAlbum.remove(item);
  }

  void addToFavoriteSong(item) {
    favoriteSong.add(item);
  }

  void removeFromFavoriteSong(item) {
    favoriteSong.remove(item);
  }
}
