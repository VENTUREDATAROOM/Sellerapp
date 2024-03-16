import 'package:fresh_mandi/dashboard/controller/controller.dart';
import 'package:get/get.dart';

/// A binding class for the AadharKycScreen.
///
/// This class ensures that the AadharKycController is created when the
/// AadharKycScreen is first loaded.
class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardPageController());
  }
}
