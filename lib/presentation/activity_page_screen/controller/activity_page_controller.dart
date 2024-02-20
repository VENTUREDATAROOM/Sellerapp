import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/activity_page_screen/models/activity_page_model.dart';

/// A controller class for the ActivityPageScreen.
///
/// This class manages the state of the ActivityPageScreen, including the
/// current activityPageModelObj
class ActivityPageController extends GetxController {
  Rx<ActivityPageModel> activityPageModelObj = ActivityPageModel().obs;
}
