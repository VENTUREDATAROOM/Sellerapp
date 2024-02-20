import '../sell_veggies_screen/widgets/sellveggies_item_widget.dart';
import 'controller/sell_veggies_controller.dart';
import 'models/sellveggies_item_model.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_leading_image.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_subtitle.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SellVeggiesScreen extends GetWidget<SellVeggiesController> {
  const SellVeggiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 41.h, top: 23.v, right: 34.h),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 115.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 42.h,
                        crossAxisSpacing: 42.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.sellVeggiesModelObj.value
                        .sellveggiesItemList.value.length,
                    itemBuilder: (context, index) {
                      SellveggiesItemModel model = controller
                          .sellVeggiesModelObj
                          .value
                          .sellveggiesItemList
                          .value[index];
                      return SellveggiesItemWidget(model);
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 56.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_sell_vegies".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
