import '../controller/activity_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ActivityPageScreen.
///
/// This class ensures that the ActivityPageController is created when the
/// ActivityPageScreen is first loaded.
class ActivityPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivityPageController());
  }
}
