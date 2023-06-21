import 'package:get/get.dart';
import 'package:spotify/models/albums/album_songs.dart';

import '../../../models/singer_class..dart';
import '../../../list/list_singer.dart';

class PlayingSongController extends GetxController {
  var isContainerShown = false.obs;
  var isPlayed = true.obs;
  var selectedIndex = 0;
  var singerList_favSinger = List.from(singer_list).obs;

  void showContainer() {
    isContainerShown.value = true;
  }

  void playSong() {
    isPlayed.value = !isPlayed.value;
  }

}
