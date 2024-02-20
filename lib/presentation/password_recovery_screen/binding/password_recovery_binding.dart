import '../controller/password_recovery_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PasswordRecoveryScreen.
///
/// This class ensures that the PasswordRecoveryController is created when the
/// PasswordRecoveryScreen is first loaded.
class PasswordRecoveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordRecoveryController());
  }
}
