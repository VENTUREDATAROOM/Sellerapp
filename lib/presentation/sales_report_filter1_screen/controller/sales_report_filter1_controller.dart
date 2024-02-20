import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/sales_report_filter1_screen/models/sales_report_filter1_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

/// A controller class for the SalesReportFilter1Screen.
///
/// This class manages the state of the SalesReportFilter1Screen, including the
/// current salesReportFilter1ModelObj
class SalesReportFilter1Controller extends GetxController {
  Rx<SalesReportFilter1Model> salesReportFilter1ModelObj =
      SalesReportFilter1Model().obs;

  Rx<List<DateTime?>> selectedDatesFromCalendar1 = Rx([]);
}
