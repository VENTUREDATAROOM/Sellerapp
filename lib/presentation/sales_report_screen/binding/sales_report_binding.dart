import '../controller/sales_report_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SalesReportScreen.
///
/// This class ensures that the SalesReportController is created when the
/// SalesReportScreen is first loaded.
class SalesReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SalesReportController());
  }
}
