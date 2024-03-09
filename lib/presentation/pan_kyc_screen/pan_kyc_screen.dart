import 'controller/pan_kyc_controller.dart';
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

class PanKycScreen extends GetWidget<PanKycController> {
  const PanKycScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 23.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: AnotherStepper(
                          iconHeight: 65,
                          iconWidth: 41,
                          stepperDirection: Axis.horizontal,
                          activeIndex: 2,
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
                                  width: 32.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.h, vertical: 5.v),
                                  decoration: AppDecoration.outlinePrimary4
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder16),
                                  child: Text("lbl_3".tr,
                                      style: CustomTextStyles
                                          .bodyLargeInterOnErrorContainer)),
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
                                      decoration: AppDecoration.outlinePrimary2
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder16),
                                      child: Text("lbl_4".tr,
                                          style: CustomTextStyles
                                              .bodyLargeInterPrimary)),
                                  Container(
                                      width: 44.h,
                                      margin: EdgeInsets.only(top: 4.v),
                                      child: Text("msg_bank_a_c_details".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodySmallPrimary_1
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
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder16),
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
                                      style: CustomTextStyles.bodySmallPrimary_1
                                          .copyWith(height: 1.20)))
                            ]))
                          ])),
                  SizedBox(height: 23.v),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.h, vertical: 19.v),
                          decoration: AppDecoration.outlineBlack9001.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder11),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 19.v),
                                Text("lbl_pan_card2".tr,
                                    style: CustomTextStyles
                                        .titleMediumInterPrimary),
                                SizedBox(height: 7.v),
                                Container(
                                    width: 239.h,
                                    margin: EdgeInsets.only(right: 35.h),
                                    child: Text("msg_please_enter_your".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.labelMedium!
                                            .copyWith(height: 1.30))),
                                SizedBox(height: 30.v),
                                Text("lbl_pan_card_number".tr,
                                    style: theme.textTheme.labelMedium),
                                SizedBox(height: 12.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 59.h),
                                    child: CustomTextFormField(
                                        controller:
                                            controller.cardNumberController,
                                        textInputAction: TextInputAction.done)),
                                SizedBox(height: 79.v),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 7.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 41.h, vertical: 21.v),
                                    decoration: AppDecoration.outlinePrimary3
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: controller.imageFile.isEmpty
                                        ? Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                                SizedBox(height: 6.v),
                                                Text("msg_upload_your_pan".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallPoppinsGray60001),
                                                SizedBox(height: 13.v),
                                                CustomOutlinedButton(
                                                  width: 106.h,
                                                  text: "lbl_upload".tr,
                                                  onPressed: () {
                                                    controller
                                                        .pickingImage(context);
                                                  },
                                                )
                                              ])
                                        : Container(
                                            decoration: BoxDecoration(
                                              color: theme.colorScheme.primary,
                                              shape: BoxShape.circle,
                                            ),
                                            height: 120.adaptSize,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Image.file(
                                              controller.pickedImage.value!,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                  ),
                                ),
                                Spacer(),
                                CustomElevatedButton(
                                    height: 33.v,
                                    text: "lbl_submit".tr,
                                    margin: EdgeInsets.only(
                                        left: 10.h, right: 15.h),
                                    buttonTextStyle: CustomTextStyles
                                        .titleMediumInterOnErrorContainerMedium,
                                    onPressed: () {
                                      onTapSubmit();
                                    },
                                    alignment: Alignment.center),
                                SizedBox(height: 30.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        width: 242.h,
                                        margin: EdgeInsets.only(
                                            left: 13.h, right: 18.h),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "msg_if_you_are_facing2"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .bodySmalla54e6c16),
                                              TextSpan(
                                                  text: "lbl_whatsapp".tr,
                                                  style: CustomTextStyles
                                                      .labelMediumff4e6c16)
                                            ]),
                                            textAlign: TextAlign.center)))
                              ]))),
                  SizedBox(height: 5.v)
                ]))));
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

  /// Common widget
  Widget _buildProfileSection({
    required String div,
    required String profilePic,
  }) {
    return Column(children: [
      Container(
          width: 32.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
          decoration: AppDecoration.outlinePrimary2
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
          child: Text(div,
              style: CustomTextStyles.bodyLargeInterPrimary.copyWith(
                  color: theme.colorScheme.primary.withOpacity(0.65)))),
      SizedBox(height: 4.v),
      SizedBox(
          width: 31.h,
          child: Text(profilePic,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodySmallPrimary_1.copyWith(
                  color: theme.colorScheme.primary.withOpacity(0.54),
                  height: 1.20)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the bankKycScreen when the action is triggered.
  onTapSubmit() {
    Get.toNamed(
      AppRoutes.bankKycScreen,
    );
  }
}
