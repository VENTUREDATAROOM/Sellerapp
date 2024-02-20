import '../controller/sales_report_filter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SalesReportFilterScreen.
///
/// This class ensures that the SalesReportFilterController is created when the
/// SalesReportFilterScreen is first loaded.
class SalesReportFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SalesReportFilterController());
  }
}
