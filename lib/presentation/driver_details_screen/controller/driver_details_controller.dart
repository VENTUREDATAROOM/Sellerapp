import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/driver_details_screen/models/driver_details_model.dart';

/// A controller class for the DriverDetailsScreen.
///
/// This class manages the state of the DriverDetailsScreen, including the
/// current driverDetailsModelObj
class DriverDetailsController extends GetxController {
  Rx<DriverDetailsModel> driverDetailsModelObj = DriverDetailsModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.splashScreen,
      );
    });
  }
}
