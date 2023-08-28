import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class SongController extends GetxController {
  final player = AudioPlayer();
  final String url2 =
      "http://yy10112001.ddns.net:8001/static/1291ef090779c7d26fa6c5f4224b84d55fe64acd652fb831533affa8f9c8f6d62585ea923ead9d4073f346750ee58e260df2305eff5a956c17b6dd444639e756.mp3";

  void PlaySong(String url) async {
    await player.setUrl(url);
    player.play();
  }
}
