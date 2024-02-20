import '../controller/password_typing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PasswordTypingScreen.
///
/// This class ensures that the PasswordTypingController is created when the
/// PasswordTypingScreen is first loaded.
class PasswordTypingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordTypingController());
  }
}
