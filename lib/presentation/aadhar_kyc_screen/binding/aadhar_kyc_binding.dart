import '../controller/aadhar_kyc_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AadharKycScreen.
///
/// This class ensures that the AadharKycController is created when the
/// AadharKycScreen is first loaded.
class AadharKycBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AadharKycController());
  }
}
