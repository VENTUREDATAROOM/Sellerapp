import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/sales_report_empty_screen/models/sales_report_empty_model.dart';

/// A controller class for the SalesReportEmptyScreen.
///
/// This class manages the state of the SalesReportEmptyScreen, including the
/// current salesReportEmptyModelObj
class SalesReportEmptyController extends GetxController {
  Rx<SalesReportEmptyModel> salesReportEmptyModelObj =
      SalesReportEmptyModel().obs;
}
