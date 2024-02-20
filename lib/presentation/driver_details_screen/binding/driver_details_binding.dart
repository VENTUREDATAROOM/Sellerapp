import '../controller/driver_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DriverDetailsScreen.
///
/// This class ensures that the DriverDetailsController is created when the
/// DriverDetailsScreen is first loaded.
class DriverDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DriverDetailsController());
  }
}
