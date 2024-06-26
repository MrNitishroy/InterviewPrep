import 'package:chatgpt/Pages/Auth/AuthPage.dart';
import 'package:chatgpt/Pages/Auth/GoogleLogin.dart';
import 'package:chatgpt/Pages/ChatGpt.dart';
import 'package:chatgpt/Pages/HomePage/Homepage.dart';
import 'package:chatgpt/Pages/Permission/PermissionRequest.dart';
import 'package:chatgpt/Pages/Profile/ProfilePage.dart';
import 'package:chatgpt/Pages/SentanceCorrect/SentanceCategory.dart';
import 'package:chatgpt/Pages/SentanceCorrect/SentanceCorrect.dart';
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
    name: "/googleLogin",
    page: () => GoogleLogin(),
  ),
  GetPage(
    name: "/welcome",
    page: () => WelcomePage(),
  ),
  GetPage(
    name: "/permission",
    page: () => PermissionRequest(),
  ),
  GetPage(
    name: "/profile",
    page: () => ProfilePage(),
  ),
  GetPage(
    name: "/sentanceCategory",
    page: () => SentanceCategory(),
  ),
];
