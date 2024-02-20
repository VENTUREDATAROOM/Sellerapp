import '../controller/aadhar_upload_kyc_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AadharUploadKycScreen.
///
/// This class ensures that the AadharUploadKycController is created when the
/// AadharUploadKycScreen is first loaded.
class AadharUploadKycBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AadharUploadKycController());
  }
}
