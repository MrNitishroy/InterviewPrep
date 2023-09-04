import 'package:chatgpt/Pages/Auth/AuthPage.dart';
import 'package:chatgpt/Pages/ChatGpt.dart';
import 'package:chatgpt/Pages/HomePage/HomeData.dart';
import 'package:chatgpt/Pages/Profile/ProfilePage.dart';
import 'package:chatgpt/Pages/Welcome/WelcomePage.dart';
import 'package:get/get.dart';

class MyNavController extends GetxController {
  RxInt tabnumber = 0.obs;
  final pages = [
    HomeData(),
    ChatPage(),
    AuthPage(),
    ProfilePage(),
  ];

  void onTabChange(int indexValue) {
    tabnumber.value = indexValue;
  }
}
