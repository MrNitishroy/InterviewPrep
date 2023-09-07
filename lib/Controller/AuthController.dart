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
  RxBool isLoading = false.obs;
  final firebaseAuth = FirebaseAuth.instance;
  User? user;
  RxString firstName = "Groot".obs;
  @override
  void onInit() {
    super.onInit();
    user = firebaseAuth.currentUser;
    getFirstName();
  }

  void getFirstName() {
    try {
      if (user != null) {
        var name = user!.displayName;
        List<String> arrName = name!.split(' ');
        firstName.value = arrName.isNotEmpty ? arrName[0] : "Root";
        print(firstName);
      }
    } catch (e) {
      print(e);
    }
  }

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

        Get.offAllNamed("/homePage");
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
          Get.offAllNamed("/homepage");
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

  void signOut() {
    firebaseAuth.signOut();
    Get.offAllNamed("/googleLogin");
  }

  void signInWithGoogle() async {
    isLoading.value = true;
    final GoogleSignInAccount? googleSignInAccount =
        await GoogleSignIn().signInSilently();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential authCredential = await GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      final UserCredential userCredential =
          await firebaseAuth.signInWithCredential(authCredential).catchError(
        (onError) {
          print("Print Error");
        },
      );
      Get.offAllNamed("/permission");
    } else {}
    isLoading.value = false;
  }
}
