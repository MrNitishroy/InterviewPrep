import 'package:get/get.dart';

class SplaceController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    splaceHandle();
  }

  void splaceHandle() async {
    Future.delayed(Duration(seconds: 4), () {
      Get.offAllNamed("/ChatPage");
    });
  }
}
