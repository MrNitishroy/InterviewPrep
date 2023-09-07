import 'package:chatgpt/Controller/AuthController.dart';
import 'package:chatgpt/Model/UserModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDataController extends GetxController {
  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  RxBool dataUploading = false.obs;
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;
  User? user;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    user = auth.currentUser;
    initUserData();
  }

  void initUserData() async {
    dataUploading.value = true;
    try {
      if (user != null) {
        var name = user!.displayName;
        var email = user!.email;
        var photoUrl = user!.photoURL;
        var uid = user!.uid;
        var phoneNumber = user!.phoneNumber;
        var providerData = user!.providerData;
        print("Name: $name");
        print("Email: $email");
        print("PhotoUrl: $photoUrl");
        print("Uid: $uid");
        print("PhoneNumber: $phoneNumber");
        print("ProviderData: $providerData");
        var newUser = UserModel(
          userId: user!.uid,
          title: user!.displayName,
          email: user!.email,
          phoneNumber: user!.phoneNumber,
          profileUrl: user!.photoURL,
          role: "user",
        );
        await db.collection("users").doc(uid).set(
              newUser.toJson(),
            );
      }
    } catch (e) {
      print(e);
    }
    dataUploading.value = false;
  }


}
