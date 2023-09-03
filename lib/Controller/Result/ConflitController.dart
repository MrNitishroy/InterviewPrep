import 'package:confetti/confetti.dart';
import 'package:get/get.dart';

class MyConflitController extends GetxController {
  final controller = ConfettiController();
  bool isPlaying = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    controller.play();
    stop();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  void stop() {
    Future.delayed(Duration(seconds: 3), () {
      controller.stop();
    });
  }
}
