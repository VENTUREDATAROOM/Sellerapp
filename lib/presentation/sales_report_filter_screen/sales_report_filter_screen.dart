import 'controller/sales_report_filter_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_leading_image.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_title.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SalesReportFilterScreen extends GetWidget<SalesReportFilterController> {
  const SalesReportFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(children: [
                  _buildMaximumRow1Checkboxes(),
                  _buildMaximumRowCheckmark(),
                  _buildMaximumRowCheckboxes(),
                  _buildListWithIconRow(),
                  Spacer(),
                  SizedBox(height: 44.v),
                  CustomElevatedButton(
                      height: 50.v,
                      text: "lbl_apply".tr,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      buttonTextStyle:
                          CustomTextStyles.titleMediumOnErrorContainer,
                      onPressed: () {
                        onTapApply();
                      })
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_select_time_period".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildMaximumRow1Checkboxes() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
        decoration: AppDecoration.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
              child: Text("lbl_today2".tr,
                  style: CustomTextStyles.titleSmallRalewayBluegray900)),
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(3.h),
              decoration: AppDecoration.white,
              child: CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  alignment: Alignment.center))
        ]));
  }

  /// Section Widget
  Widget _buildMaximumRowCheckmark() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v),
        decoration: AppDecoration.fillLightGreenA,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text("lbl_this_week".tr,
                  style: CustomTextStyles.titleSmallRalewayPrimarySemiBold)),
          CustomImageView(
              imagePath: ImageConstant.imgCheckmarkPrimary,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(right: 4.h))
        ]));
  }

  /// Section Widget
  Widget _buildMaximumRowCheckboxes() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
        decoration: AppDecoration.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text("lbl_this_month".tr,
                  style: CustomTextStyles.titleSmallRalewayBluegray900)),
          CustomImageView(height: 24.adaptSize, width: 24.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildListWithIconRow() {
    return GestureDetector(
        onTap: () {
          onTapListWithIconRow();
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
            decoration: AppDecoration.white,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCalendar1Black900,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 3.v),
                  child: Text("lbl_select_date".tr,
                      style: CustomTextStyles.titleSmallRalewayBluegray900)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightGray500,
                  height: 24.adaptSize,
                  width: 24.adaptSize)
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the salesReportFilter1Screen when the action is triggered.
  onTapListWithIconRow() {
    Get.toNamed(
      AppRoutes.salesReportFilter1Screen,
    );
  }

  /// Navigates to the salesReportScreen when the action is triggered.
  onTapApply() {
    Get.toNamed(
      AppRoutes.salesReportScreen,
    );
  }
}
