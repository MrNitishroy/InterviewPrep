import 'package:get/get.dart';

class InterviewController2 extends GetxController {
  RxBool isCameraOpen = false.obs;

  void cameraOnOff() {
    isCameraOpen.value = !isCameraOpen.value;
    print(isCameraOpen.value);
  }
}
