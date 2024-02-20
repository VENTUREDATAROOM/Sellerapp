import '../controller/sales_report_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SalesReportEmptyScreen.
///
/// This class ensures that the SalesReportEmptyController is created when the
/// SalesReportEmptyScreen is first loaded.
class SalesReportEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SalesReportEmptyController());
  }
}
