import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/dashboard/models/dashboard_model.dart';
import 'package:fresh_mandi/presentation/activity_page_screen/activity_page_screen.dart';
import 'package:fresh_mandi/presentation/sold_veggies_screen/sold_veggies_screen.dart';

class DashboardPageController extends GetxController {
  Rx<DashboardModel> dashboardModelObj = DashboardModel().obs;
  var selectedIndex = 0.obs;

  buildPages() {
    switch (selectedIndex.value) {
      case 1:
        return SoldVeggiesScreen();
      case 0:
      default:
        return ActivityPageScreen();
    }
  }
}
