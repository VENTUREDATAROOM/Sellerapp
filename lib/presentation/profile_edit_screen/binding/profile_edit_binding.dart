import '../controller/profile_edit_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileEditScreen.
///
/// This class ensures that the ProfileEditController is created when the
/// ProfileEditScreen is first loaded.
class ProfileEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileEditController());
  }
}
