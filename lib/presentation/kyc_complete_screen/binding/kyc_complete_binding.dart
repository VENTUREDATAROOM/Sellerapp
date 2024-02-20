import '../controller/kyc_complete_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KycCompleteScreen.
///
/// This class ensures that the KycCompleteController is created when the
/// KycCompleteScreen is first loaded.
class KycCompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KycCompleteController());
  }
}
