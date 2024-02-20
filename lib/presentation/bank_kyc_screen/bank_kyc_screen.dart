import 'controller/bank_kyc_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_leading_image.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:fresh_mandi/widgets/custom_outlined_button.dart';
import 'package:fresh_mandi/widgets/custom_text_form_field.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';

class BankKycScreen extends GetWidget<BankKycController> {
  const BankKycScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v),
                  child: Column(children: [
                    Padding(
                        padding: EdgeInsets.only(right: 14.h),
                        child: AnotherStepper(
                            iconHeight: 65,
                            iconWidth: 41,
                            stepperDirection: Axis.horizontal,
                            activeIndex: 3,
                            barThickness: 3,
                            inverted: true,
                            activeBarColor: theme.primaryColor,
                            inActiveBarColor: Colors.grey,
                            stepperList: [
                              StepperData(
                                  iconWidget: Column(children: [
                                SizedBox(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize,
                                                  padding: EdgeInsets.all(3.h),
                                                  decoration: AppDecoration
                                                      .outlinePrimary1
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder16),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgCheckmark,
                                                      color: Colors.white,
                                                      height: 15.adaptSize,
                                                      width: 15.adaptSize,
                                                      alignment:
                                                          Alignment.center))),
                                          // Align(
                                          //     alignment: Alignment.centerLeft,
                                          //     child: Padding(
                                          //         padding: EdgeInsets.only(
                                          //             left: 12.h),
                                          //         child: Text("lbl_1".tr,
                                          //             style: CustomTextStyles
                                          //                 .bodyLargeInterOnError)))
                                        ])),
                                Container(
                                    width: 41.h,
                                    margin: EdgeInsets.only(top: 6.v),
                                    child: Text("lbl_aadhaar_front".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall!
                                            .copyWith(height: 1.25)))
                              ])),
                              StepperData(
                                  iconWidget: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                    Container(
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        margin: EdgeInsets.only(left: 2.h),
                                        padding: EdgeInsets.all(3.h),
                                        decoration: AppDecoration
                                            .outlinePrimary4
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder16),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCheckmark,
                                            color: Colors.white,
                                            height: 15.adaptSize,
                                            width: 15.adaptSize,
                                            alignment: Alignment.center)),
                                    Container(
                                        width: 41.h,
                                        margin: EdgeInsets.only(top: 6.v),
                                        child: Text("lbl_aadhaar_back".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.20)))
                                  ])),
                              StepperData(
                                  iconWidget: Column(children: [
                                Container(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    padding: EdgeInsets.all(3.h),
                                    decoration: AppDecoration.outlinePrimary4
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder16),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgCheckmark,
                                        color: Colors.white,
                                        height: 15.adaptSize,
                                        width: 15.adaptSize,
                                        alignment: Alignment.center)),
                                Container(
                                    width: 23.h,
                                    margin: EdgeInsets.only(top: 5.v),
                                    child: Text("lbl_pan_card".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall!
                                            .copyWith(height: 1.20)))
                              ])),
                              StepperData(
                                  iconWidget: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                    Container(
                                        width: 32.adaptSize,
                                        margin: EdgeInsets.only(left: 5.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.h, vertical: 5.v),
                                        decoration: AppDecoration
                                            .outlinePrimary4
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder16),
                                        child: Text("lbl_4".tr,
                                            style: CustomTextStyles
                                                .titleMediumInterOnErrorContainer)),
                                    Container(
                                        width: 44.h,
                                        margin: EdgeInsets.only(top: 4.v),
                                        child: Text("msg_bank_a_c_details".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.20)))
                                  ])),
                              StepperData(
                                  iconWidget: Column(children: [
                                Container(
                                    width: 32.adaptSize,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.h, vertical: 5.v),
                                    decoration: AppDecoration.outlinePrimary2
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder16),
                                    child: Text("lbl_5".tr,
                                        style: CustomTextStyles
                                            .bodyLargeInterPrimary)),
                                Container(
                                    width: 31.h,
                                    margin: EdgeInsets.only(top: 4.v),
                                    child: Text("lbl_profile_pic".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .bodySmallPrimary_1
                                            .copyWith(height: 1.20)))
                              ]))
                            ])),
                    SizedBox(height: 22.v),
                    Container(
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 23.h, vertical: 18.v),
                        decoration: AppDecoration.outlineBlack9001.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder11),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_bank_account".tr,
                                      style: CustomTextStyles
                                          .titleMediumInterPrimary)),
                              SizedBox(height: 7.v),
                              Container(
                                  width: 259.h,
                                  margin:
                                      EdgeInsets.only(left: 1.h, right: 16.h),
                                  child: Text("msg_please_enter_your2".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelMedium!
                                          .copyWith(height: 1.30))),
                              SizedBox(height: 14.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_account_number".tr,
                                      style: theme.textTheme.labelMedium)),
                              SizedBox(height: 4.v),
                              _buildFrame(),
                              SizedBox(height: 12.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("msg_confirm_account".tr,
                                      style: theme.textTheme.labelMedium)),
                              SizedBox(height: 4.v),
                              _buildFrame1(),
                              SizedBox(height: 12.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_bank_name".tr,
                                      style: theme.textTheme.labelMedium)),
                              SizedBox(height: 4.v),
                              _buildFrame2(),
                              SizedBox(height: 12.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_ifsc_code".tr,
                                      style: theme.textTheme.labelMedium)),
                              SizedBox(height: 4.v),
                              _buildFrame3(),
                              SizedBox(height: 18.v),
                              Text("lbl_account_type".tr,
                                  style: theme.textTheme.labelMedium),
                              SizedBox(height: 5.v),
                              _buildFrame4(),
                              SizedBox(height: 26.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 8.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 29.h, vertical: 13.v),
                                      decoration: AppDecoration.outlinePrimary3
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text("msg_upload_your_any".tr,
                                                style: CustomTextStyles
                                                    .bodySmallPoppinsGray60001),
                                            SizedBox(height: 9.v),
                                            _buildFrame5()
                                          ]))),
                              SizedBox(height: 37.v),
                              _buildFrame6()
                            ])),
                    SizedBox(height: 5.v)
                  ])),
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 59.v,
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 29.h),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_kyc".tr.toUpperCase()));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 60.h),
        child: CustomTextFormField(controller: controller.frameController));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 60.h),
        child: CustomTextFormField(controller: controller.frameController1));
  }

  /// Section Widget
  Widget _buildFrame2() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 60.h),
        child: CustomTextFormField(controller: controller.frameController2));
  }

  /// Section Widget
  Widget _buildFrame3() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 60.h),
        child: CustomTextFormField(controller: controller.frameController3));
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 60.h),
        child: CustomTextFormField(
            controller: controller.frameController4,
            textInputAction: TextInputAction.done,
            suffix: Container(
                margin: EdgeInsets.symmetric(horizontal: 6.h, vertical: 7.v),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(1.h)),
                child: CustomImageView(
                    imagePath: ImageConstant.imgMobile,
                    height: 13.v,
                    width: 15.h)),
            suffixConstraints: BoxConstraints(maxHeight: 29.v)));
  }

  /// Section Widget
  Widget _buildFrame5() {
    return CustomOutlinedButton(width: 106.h, text: "lbl_upload".tr);
  }

  /// Section Widget
  Widget _buildFrame6() {
    return CustomElevatedButton(
        height: 33.v,
        text: "lbl_submit".tr,
        margin: EdgeInsets.only(left: 11.h, right: 16.h),
        buttonTextStyle:
            CustomTextStyles.titleMediumInterOnErrorContainerMedium,
        onPressed: () {
          onTapFrame();
        },
        alignment: Alignment.center);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the picVerificationScreen when the action is triggered.
  onTapFrame() {
    Get.toNamed(
      AppRoutes.picVerificationScreen,
    );
  }
}
