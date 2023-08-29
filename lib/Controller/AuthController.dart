import 'package:chatgpt/Pages/ChatGpt.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isSecure = true.obs;
  RxBool isLogin = true.obs;
  RxBool isLoggedIn = false.obs;
  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPwd = TextEditingController();
  TextEditingController SignupEmail = TextEditingController();
  TextEditingController SignupName = TextEditingController();
  TextEditingController SignupPwd = TextEditingController();

  void login() {
    if (loginEmail.text.isNotEmpty && loginPwd.text.isNotEmpty) {
      if (loginEmail.text == "root" && loginPwd.text == "root") {
        Fluttertoast.showToast(
          msg: "Login Successfull",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 15.0,
        );
        isLoggedIn.value = true;
        Get.offAll(ChatPage());
      } else {
        Fluttertoast.showToast(
          msg: "Invalid Credentials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 15.0,
        );
      }
    } else {
      Fluttertoast.showToast(
        msg: "Please fill all the fields",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 15.0,
      );
    }
  }
}
