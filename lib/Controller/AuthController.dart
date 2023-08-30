import 'package:chatgpt/Pages/ChatGpt.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  RxBool isSecure = true.obs;
  RxBool isLogin = true.obs;
  RxBool isLoggedIn = false.obs;
  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPwd = TextEditingController();
  TextEditingController SignupEmail = TextEditingController();
  TextEditingController SignupName = TextEditingController();
  TextEditingController SignupPwd = TextEditingController();

  final firebaseAuth = FirebaseAuth.instance;

  void loginWithEmailAndPassword() async {
    if (loginEmail.text.isNotEmpty && loginPwd.text.isNotEmpty) {
      try {
        await firebaseAuth.signInWithEmailAndPassword(
          email: loginEmail.text,
          password: loginPwd.text,
        );
        Fluttertoast.showToast(
          msg: "Login Successfull",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 15.0,
        );

        Get.offAllNamed("/ChatPage");
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Fluttertoast.showToast(
            msg: "No user found for that email.",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 15.0,
          );
        } else if (e.code == 'wrong-password') {
          Fluttertoast.showToast(
            msg: "Wrong password provided for that user.",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 15.0,
          );
        }
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

  void signupWithEmailAndPassword() async {
    if (SignupName.text.isNotEmpty &&
        SignupEmail.text.isNotEmpty &&
        SignupPwd.text.isNotEmpty) {
      await firebaseAuth
          .createUserWithEmailAndPassword(
              email: SignupEmail.text, password: SignupPwd.text)
          .then(
        (value) {
          Fluttertoast.showToast(
            msg: "Signup Successfull",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 15.0,
          );
          Get.offAllNamed("/ChatPage");
        },
      ).catchError(
        (e) {
          Fluttertoast.showToast(
            msg: e.toString(),
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 15.0,
          );
        },
      );
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

  void signOut() {
    firebaseAuth.signOut();
    Get.offAllNamed("/authPage");
  }

  void signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await GoogleSignIn().signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        final UserCredential userCredential =
            await firebaseAuth.signInWithCredential(authCredential);
        Get.offAllNamed("/ChatPage");
      } else {}
    } catch (error) {
      print("An error occurred: $error");
    }
  }
}
