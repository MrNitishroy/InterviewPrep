import 'dart:convert';

import 'package:chatgpt/Controller/AudioController.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class TextToScpeechController extends GetxController {
  SongController songController = Get.put(SongController());
  Future<void> getTextToSpeech(String text) async {
    final Uri uri = Uri.parse(
        'https://microsoft-edge-text-to-speech.p.rapidapi.com/TTS/EdgeTTS');

    final Map<String, String> queryParams = {
      'text': text,
      'voice_name': 'en-IN-Prabhat',
    };

    final Uri fullUri = uri.replace(queryParameters: queryParams);

    final Map<String, String> headers = {
      'X-RapidAPI-Key': '7b76b45420msh631f27d49acaf8bp1eb0c3jsnea66b19011f5',
      'X-RapidAPI-Host': 'microsoft-edge-text-to-speech.p.rapidapi.com',
    };

    try {
      final response = await http.get(
        fullUri,
        headers: headers,
      );

      if (response.statusCode == 200) {
        var voiceUrl = response.body;
        var temp = jsonDecode(response.body);
        songController.PlaySong(voiceUrl);
        print(response.body);
      } else {
        print('Request failed with status: ${response.statusCode}');
        print(response.body);
      }
    } catch (error) {
      print('An error occurred: $error');
    }
  }
}
