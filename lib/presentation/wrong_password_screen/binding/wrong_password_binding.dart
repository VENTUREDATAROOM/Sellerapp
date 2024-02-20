import '../controller/wrong_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WrongPasswordScreen.
///
/// This class ensures that the WrongPasswordController is created when the
/// WrongPasswordScreen is first loaded.
class WrongPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WrongPasswordController());
  }
}
