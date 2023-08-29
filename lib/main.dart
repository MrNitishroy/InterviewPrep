import 'package:chatgpt/Config/Themes.dart';
import 'package:chatgpt/Pages/ChatGpt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      // darkTheme: darkTheme,
      home: ChatGPT(),
    );
  }
}
