import 'controller/setting_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_leading_image.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SettingScreen extends GetWidget<SettingController> {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 390.h,
                child: Column(children: [
                  _buildEditProfileStack(),
                  SizedBox(height: 45.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                _buildPreferencesColumn(),
                                SizedBox(height: 19.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 26.h, right: 16.h),
                                    child: _buildSettings(
                                        kycText: "lbl_language".tr)),
                                SizedBox(height: 17.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.h, right: 16.h),
                                    child: _buildUMoon(
                                        darkmode: "lbl_darkmode".tr)),
                                SizedBox(height: 40.v),
                                _buildContentColumn(),
                                SizedBox(height: 14.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.h),
                                    child: _buildSalesTwoRow(
                                        salesReportText:
                                            "lbl_sales_report2".tr)),
                                SizedBox(height: 25.v),
                                _buildPreferencesColumn1(),
                                SizedBox(height: 19.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 26.h, right: 16.h),
                                    child:
                                        _buildSettings(kycText: "lbl_kyc2".tr)),
                                SizedBox(height: 17.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.h, right: 16.h),
                                    child: _buildUMoon(
                                        darkmode: "lbl_darkmode".tr)),
                                SizedBox(height: 40.v),
                                _buildContentColumn1(),
                                SizedBox(height: 14.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.h),
                                    child: _buildSalesTwoRow(
                                        salesReportText:
                                            "lbl_sales_report2".tr))
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildEditProfileStack() {
    return SizedBox(
        height: 223.v,
        width: 373.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 113.h, right: 138.h, bottom: 13.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUnsplashJmurdhtm7ng122x122,
                        height: 122.adaptSize,
                        width: 122.adaptSize,
                        radius: BorderRadius.circular(61.h)),
                    SizedBox(height: 4.v),
                    CustomElevatedButton(
                        height: 29.v,
                        text: "lbl_edit_profile".tr,
                        margin: EdgeInsets.only(left: 8.h, right: 9.h),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                        buttonTextStyle:
                            CustomTextStyles.labelLargePoppinsOnErrorContainer,
                        onPressed: () {
                          onTapEditProfile();
                        })
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgGroup36,
              height: 223.v,
              width: 314.h,
              alignment: Alignment.centerRight),
          CustomAppBar(
              height: 36.v,
              leadingWidth: 43.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowDown,
                  margin: EdgeInsets.only(left: 17.h)),
              centerTitle: true,
              title: AppbarSubtitleTwo(text: "lbl_settings".tr))
        ]));
  }

  /// Section Widget
  Widget _buildPreferencesColumn() {
    return Container(
        width: 390.h,
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 4.v),
        decoration: AppDecoration.fillGray10001,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("lbl_preferences".tr,
                  style: CustomTextStyles.labelLargePoppinsPrimary)
            ]));
  }

  /// Section Widget
  Widget _buildContentColumn() {
    return Container(
        width: 390.h,
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 4.v),
        decoration: AppDecoration.fillGray10001,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Text("lbl_content".tr,
                  style: CustomTextStyles.labelLargePoppinsPrimary)
            ]));
  }

  /// Section Widget
  Widget _buildPreferencesColumn1() {
    return Container(
        width: 390.h,
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 4.v),
        decoration: AppDecoration.fillGray10001,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("lbl_preferences".tr,
                  style: CustomTextStyles.labelLargePoppinsPrimary)
            ]));
  }

  /// Section Widget
  Widget _buildContentColumn1() {
    return Container(
        width: 390.h,
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 4.v),
        decoration: AppDecoration.fillGray10001,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              Text("lbl_content".tr,
                  style: CustomTextStyles.labelLargePoppinsPrimary)
            ]));
  }

  /// Common widget
  Widget _buildSettings({required String kycText}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(bottom: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text(kycText,
                  style: CustomTextStyles.titleSmallPrimary15
                      .copyWith(color: theme.colorScheme.primary))),
          Spacer(),
          Opacity(
              opacity: 0.65,
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimary,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(top: 6.v, bottom: 4.v)))
        ]);
  }

  /// Common widget
  Widget _buildUMoon({required String darkmode}) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgUMoon,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(darkmode,
              style: CustomTextStyles.titleSmallPrimary15
                  .copyWith(color: theme.colorScheme.primary))),
      Spacer(),
      Opacity(
          opacity: 0.65,
          child: CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimary,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 5.v)))
    ]);
  }

  /// Common widget
  Widget _buildSalesTwoRow({required String salesReportText}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgSales1,
              height: 24.v,
              width: 25.h,
              margin: EdgeInsets.only(bottom: 3.v)),
          Padding(
              padding: EdgeInsets.only(left: 17.h, top: 4.v),
              child: Text(salesReportText,
                  style: CustomTextStyles.titleSmallPrimary15
                      .copyWith(color: theme.colorScheme.primary))),
          Spacer(),
          Opacity(
              opacity: 0.65,
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimary,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(top: 8.v, bottom: 5.v)))
        ]);
  }

  /// Navigates to the profileEditScreen when the action is triggered.
  onTapEditProfile() {
    Get.toNamed(
      AppRoutes.profileEditScreen,
    );
  }
}
