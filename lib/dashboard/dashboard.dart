import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation_plus/fancy_bottom_navigation_plus.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/dashboard/controller/controller.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  DashboardPageController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => controller.buildPages()),
      ),
      bottomNavigationBar: FancyBottomNavigationPlus(
        titleStyle: CustomTextStyles.titleMediumPrimaryMedium,
        tabs: [
          TabData(
            icon: Obx(
              () => CustomImageView(
                imagePath: ImageConstant.imgFilledHome,
                color: (controller.selectedIndex.value == 0)
                    ? Colors.white
                    : theme.primaryColor,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
            ),
            title: "Home",
          ),
          TabData(
              icon: Obx(
                () => CustomImageView(
                  imagePath: ImageConstant.imgOutlinedGraph,
                  color: (controller.selectedIndex.value == 1)
                      ? Colors.white
                      : theme.primaryColor,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              title: "Sold Veggies"),
        ],
        onTabChangedListener: (position) {
          controller.selectedIndex.value = position;
        },
      ),
    );
  }
}
