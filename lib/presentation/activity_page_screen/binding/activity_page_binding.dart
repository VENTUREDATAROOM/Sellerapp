import 'package:fresh_mandi/presentation/activity_page_screen/controller/activity_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AadharUploadKycScreen.
///
/// This class ensures that the AadharUploadKycController is created when the
/// AadharUploadKycScreen is first loaded.
class ActivityPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivityPageController());
  }
}
