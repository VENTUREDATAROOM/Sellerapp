import 'controller/sales_report_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_leading_image.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_title.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SalesReportScreen extends GetWidget<SalesReportController> {
  const SalesReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 37.v),
                child: Column(children: [
                  _buildTodaySection(),
                  SizedBox(height: 41.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 24.h),
                          child: Text("lbl_150_65".tr,
                              style:
                                  CustomTextStyles.labelMediumRalewayPrimary))),
                  SizedBox(height: 5.v),
                  _buildVectorElevenSection(),
                  Divider(
                      color: appTheme.gray200, indent: 24.h, endIndent: 35.h),
                  SizedBox(height: 4.v),
                  _buildLabelSection(),
                  SizedBox(height: 50.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Column(children: [
                            Text("lbl_status".tr,
                                style: CustomTextStyles
                                    .titleSmallRalewayPrimaryBold_1),
                            SizedBox(height: 9.v),
                            SizedBox(
                                width: 43.h,
                                child:
                                    Divider(color: theme.colorScheme.primary))
                          ]))),
                  SizedBox(height: 17.v),
                  _buildCategorySection(
                      category: "lbl_status".tr, price: "lbl_amount".tr),
                  _buildCategorySection(
                      category: "lbl_received".tr, price: "lbl_923_41".tr),
                  _buildCategorySection(
                      category: "lbl_pending".tr, price: "lbl_115_24".tr),
                  _buildCategorySection(
                      category: "lbl_refunded".tr, price: "lbl_10_65".tr),
                  SizedBox(height: 5.v),
                  _buildCategorySection(
                      category: "lbl_total".tr, price: "lbl_1000_65".tr)
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
        title: AppbarTitle(text: "lbl_sales_report".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSignOut2,
              margin: EdgeInsets.fromLTRB(24.h, 7.v, 24.h, 9.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTodaySection() {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 9.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("msg_net_sale_of_today".tr,
                    style: theme.textTheme.labelLarge),
                SizedBox(height: 5.v),
                Text("lbl_1038_65".tr,
                    style: CustomTextStyles.titleMediumPrimaryExtraBold)
              ]),
              CustomElevatedButton(
                  height: 32.v,
                  width: 103.h,
                  text: "lbl_today".tr,
                  margin: EdgeInsets.only(bottom: 6.v),
                  rightIcon: Container(
                      margin: EdgeInsets.only(left: 4.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowright,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 5.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCalendar1,
                          height: 18.v,
                          width: 17.h)),
                  buttonTextStyle:
                      CustomTextStyles.titleSmallRalewayOnErrorContainer,
                  onPressed: () {
                    onTapToday();
                  })
            ]));
  }

  /// Section Widget
  Widget _buildVectorElevenSection() {
    return SizedBox(
        height: 136.v,
        width: 327.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector11,
              height: 72.v,
              width: 314.h,
              radius: BorderRadius.circular(14.h),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 1.h)),
          CustomImageView(
              imagePath: ImageConstant.imgVector12Primary,
              height: 98.v,
              width: 318.h,
              radius: BorderRadius.circular(14.h),
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 6.v)),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: EdgeInsets.only(left: 304.h),
                  padding: EdgeInsets.all(3.h),
                  decoration: AppDecoration.fillLightGreenCc
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder11),
                  child: Container(
                      padding: EdgeInsets.all(4.h),
                      decoration: AppDecoration.fillLightgreen300cc.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder7),
                      child: Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(4.h)))))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 10.h),
                  child: SizedBox(
                      height: 114.v,
                      child: VerticalDivider(width: 1.h, thickness: 1.v)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 103.v,
                  child: VerticalDivider(
                      width: 1.h, thickness: 1.v, endIndent: 3.h))),
          Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                  height: 31.v,
                  child: VerticalDivider(
                      width: 1.h, thickness: 1.v, endIndent: 3.h)))
        ]));
  }

  /// Section Widget
  Widget _buildLabelSection() {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 28.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_3".tr, style: theme.textTheme.labelLarge),
          Spacer(flex: 52),
          Text("lbl_9".tr, style: theme.textTheme.labelLarge),
          Spacer(flex: 47),
          Text("lbl_15".tr, style: theme.textTheme.labelLarge)
        ]));
  }

  /// Common widget
  Widget _buildCategorySection({
    required String category,
    required String price,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
        decoration: AppDecoration.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(category,
              style: CustomTextStyles.labelLargePrimary
                  .copyWith(color: theme.colorScheme.primary)),
          Text(price,
              style: CustomTextStyles.labelLargePrimary
                  .copyWith(color: theme.colorScheme.primary))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the salesReportFilterScreen when the action is triggered.
  onTapToday() {
    Get.toNamed(
      AppRoutes.salesReportFilterScreen,
    );
  }
}
