import 'dart:convert';
import 'dart:io'; // Import the dart:io library
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart'; // Import the path_provider package

class VoiceController extends GetxController {
  AudioPlayer audioPlayer = AudioPlayer();
  String URL = "https://api.elevenlabs.io/v1/text-to-speech/<voice-id>";
  String API = "1de53aee9513d795d6762c19777cffb2";
  String VOICEID = "21m00Tcm4TlvDq8ikWAM";
  late Directory temDir;
  late File audioFile;
  Future<void> TextToVoice() async {
    Uri uri = Uri.parse("https://api.elevenlabs.io/v1/text-to-speech/$VOICEID");
    Map<String, dynamic> body = {
      "text": "Hi! My name is Bella, nice to meet you!",
      "model_id": "eleven_monolingual_v1",
      "voice_settings": {
        "stability": 0.5,
        "similarity_boost": 0.5,
      },
    };
    final response = await http.post(
      uri,
      headers: {
        "Accept": "audio/mpeg",
        "Content-Type": "application/json",
        "xi-api-key": API,
      },
      body: json.encode(body),
    );
    if (response.statusCode == 200) {
      // If the response is successful, save the audio data to a file
      temDir = await getTemporaryDirectory();
      audioFile = File('${temDir.path}/audio.mp3');
      await audioFile.writeAsBytes(response.bodyBytes);

      // Play the stored audio file
      audioPlayer.play(
        audioFile.path as Source,
      );
    }

    print(audioFile);
    // print(response);
  }
}
