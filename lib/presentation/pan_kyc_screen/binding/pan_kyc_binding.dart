import '../controller/pan_kyc_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PanKycScreen.
///
/// This class ensures that the PanKycController is created when the
/// PanKycScreen is first loaded.
class PanKycBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PanKycController());
  }
}
