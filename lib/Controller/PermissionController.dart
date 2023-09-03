import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionController extends GetxController {
  void cameraPermision() async {
    var status = await Permission.camera.status;
    if (status.isDenied) {
      await Permission.camera.request();
    } else {
      print("Camera Granted");
      voicePermission();
    }
  }

  void voicePermission() async {
    var status = await Permission.microphone.status;
    if (status.isDenied) {
      await Permission.microphone.request();
    } else {
      print("Voice Granted");
      Get.offAllNamed('/homePage');
    }
  }

  void storagePermission() async {
    var status = await Permission.storage.status;
    if (status.isDenied) {
      await Permission.storage.request();
    } else {
      print("Storage Granted");
    }
  }
}
