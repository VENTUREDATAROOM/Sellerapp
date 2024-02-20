import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/sales_report_filter_screen/models/sales_report_filter_model.dart';

/// A controller class for the SalesReportFilterScreen.
///
/// This class manages the state of the SalesReportFilterScreen, including the
/// current salesReportFilterModelObj
class SalesReportFilterController extends GetxController {
  Rx<SalesReportFilterModel> salesReportFilterModelObj =
      SalesReportFilterModel().obs;
}
