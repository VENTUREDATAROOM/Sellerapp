import '../controller/start_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StartScreen.
///
/// This class ensures that the StartController is created when the
/// StartScreen is first loaded.
class StartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartController());
  }
}
