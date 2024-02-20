import '../controller/sales_report_filter1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SalesReportFilter1Screen.
///
/// This class ensures that the SalesReportFilter1Controller is created when the
/// SalesReportFilter1Screen is first loaded.
class SalesReportFilter1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SalesReportFilter1Controller());
  }
}
