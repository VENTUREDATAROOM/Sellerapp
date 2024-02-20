import '../controller/create_account_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateAccountScreen.
///
/// This class ensures that the CreateAccountController is created when the
/// CreateAccountScreen is first loaded.
class CreateAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAccountController());
  }
}
