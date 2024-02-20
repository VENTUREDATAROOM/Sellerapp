import '../controller/bank_kyc_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BankKycScreen.
///
/// This class ensures that the BankKycController is created when the
/// BankKycScreen is first loaded.
class BankKycBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BankKycController());
  }
}
