import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplaceController extends GetxController {
  final firebaseAuth = FirebaseAuth.instance;

  User? user;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    splaceHandle();
    user = firebaseAuth.currentUser;
  }

  void splaceHandle() async {
    Future.delayed(Duration(seconds: 4), () {
      print(user);
      if (user != null) {
        Get.offAllNamed("/ChatPage");
      } else {
        Get.offAllNamed("/welcome");
      }
    });
  }
}
