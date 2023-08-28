import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DemoController extends GetxController {
  Future<void> translateText() async {
    final uri = Uri.parse(
        'https://google-translate1.p.rapidapi.com/language/translate/v2');

    final Map<String, String> headers = {
      'X-RapidAPI-Key': '7b76b45420msh631f27d49acaf8bp1eb0c3jsnea66b19011f5',
      'X-RapidAPI-Host': 'google-translate1.p.rapidapi.com',
    };

    final Map<String, String> body = {
      'q': 'Hello, world!',
      'target': 'es',
      'source': 'en',
    };

    try {
      final response = await http.post(
        uri,
        headers: headers,
        body: body,
      );

      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        print(responseBody);
      } else {
        print('Request failed with status: ${response.statusCode}');
        print(response.body);
      }
    } catch (error) {
      print('An error occurred: $error');
    }
  }
}
