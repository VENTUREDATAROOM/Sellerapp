import '../controller/password_recovery_code_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PasswordRecoveryCodeScreen.
///
/// This class ensures that the PasswordRecoveryCodeController is created when the
/// PasswordRecoveryCodeScreen is first loaded.
class PasswordRecoveryCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordRecoveryCodeController());
  }
}
