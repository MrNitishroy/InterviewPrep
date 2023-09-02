import 'package:camera/camera.dart';
import 'package:get/get.dart';

class ICameraController extends GetxController {
  late List<CameraDescription> cameras;
  late CameraController cameraController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    startCamera();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    cameraController.dispose();
  }

  void startCamera() async {
    cameras = await availableCameras();
    cameraController = CameraController(
      cameras[1],
      ResolutionPreset.medium,
      enableAudio: false,
    );
    await cameraController.initialize().then((_) {
      if (cameraController == null || !cameraController.value.isInitialized) {
        return;
      }
      update();
    }).catchError((e) {
      print(e);
    });
  }

  void startRecording() async {
    await cameraController.startVideoRecording().then(
          (value) => {
            print("Recording Started"),
          },
        );
    update();
  }
}
