import '../controller/password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PasswordScreen.
///
/// This class ensures that the PasswordController is created when the
/// PasswordScreen is first loaded.
class PasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordController());
  }
}
