import 'package:chatgpt/Pages/Auth/AuthPage.dart';
import 'package:chatgpt/Pages/ChatGpt.dart';
import 'package:chatgpt/Pages/HomePage/Homepage.dart';
import 'package:chatgpt/Pages/Welcome/WelcomePage.dart';
import 'package:get/get.dart';

var allPages = [
  GetPage(
    name: "/homePage",
    page: () => HomePage(),
  ),
  GetPage(
    name: "/ChatPage",
    page: () => ChatPage(),
  ),
  GetPage(
    name: "/authPage",
    page: () => AuthPage(),
  ),
  GetPage(
    name: "/welcome",
    page: () => WelcomePage(),
  ),
];
