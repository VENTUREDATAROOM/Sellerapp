import '../controller/pic_verification_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PicVerificationScreen.
///
/// This class ensures that the PicVerificationController is created when the
/// PicVerificationScreen is first loaded.
class PicVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PicVerificationController());
  }
}
