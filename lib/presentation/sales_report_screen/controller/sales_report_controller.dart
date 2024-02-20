import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/sales_report_screen/models/sales_report_model.dart';

/// A controller class for the SalesReportScreen.
///
/// This class manages the state of the SalesReportScreen, including the
/// current salesReportModelObj
class SalesReportController extends GetxController {
  Rx<SalesReportModel> salesReportModelObj = SalesReportModel().obs;
}
