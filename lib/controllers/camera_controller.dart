import 'package:get/get.dart';
import 'package:camera/camera.dart';

class CameraController extends GetxController {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool isRecording=false;
  Future<void> get isInitialized => _controller.initializeCamera();

  @override
  void onInit() {
    initializeCamera();
    super.onInit();
  }

  Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController();

    _initializeControllerFuture = _controller.initializeCamera();
  }

  Future<void> startRecording(String path) async {
    try {
      isRecording=true;
      await _initializeControllerFuture;
      await _controller.startRecording(path);
    } catch (e) {
      print(e);
    }
  }

  Future<void> stopRecording() async {
    try {
      if (_controller.isRecording) {
        await _controller.stopRecording();
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void onClose() {
    _controller.dispose();
    super.onClose();
  }
}
