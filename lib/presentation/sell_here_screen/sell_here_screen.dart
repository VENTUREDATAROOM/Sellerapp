import 'controller/sell_here_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/core/utils/validation_functions.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_leading_image.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_subtitle.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:fresh_mandi/widgets/custom_drop_down.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:fresh_mandi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SellHereScreen extends GetWidget<SellHereController> {
  SellHereScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 14.h),
                        child: Column(children: [
                          _buildCard(),
                          SizedBox(height: 20.v),
                          _buildRedChilli(),
                          SizedBox(height: 7.v),
                          _buildDate(),
                          SizedBox(height: 7.v),
                          _buildAddress(),
                          SizedBox(height: 7.v),
                          _buildName(),
                          SizedBox(height: 7.v),
                          _buildQuantity(),
                          SizedBox(height: 7.v),
                          Padding(
                              padding: EdgeInsets.only(left: 7.h, right: 5.h),
                              child: CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 18.v, 19.h, 18.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCheckmarkPrimary15x15,
                                          height: 15.adaptSize,
                                          width: 15.adaptSize)),
                                  hintText: "lbl_quality".tr,
                                  items: controller.sellHereModelObj.value
                                      .dropdownItemList!.value,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  })),
                          SizedBox(height: 7.v),
                          _buildPrice(),
                          SizedBox(height: 7.v),
                          _buildDistanceFromMandi(),
                          SizedBox(height: 39.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_upload_pictures".tr,
                                  style: CustomTextStyles
                                      .titleLargeRalewayBlack900)),
                          SizedBox(height: 42.v),
                          _buildCameraIcon(),
                          SizedBox(height: 70.v),
                          _buildSubmit()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 58.v,
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 29.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_sell_here".tr));
  }

  /// Section Widget
  Widget _buildCard() {
    return SizedBox(
        height: 241.v,
        width: 319.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 231.v,
                  width: 319.h,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(24.h)))),
          CustomImageView(
              imagePath: ImageConstant.imgRedChilli230x231,
              height: 230.v,
              width: 231.h,
              radius: BorderRadius.circular(24.h),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 27.h))
        ]));
  }

  /// Section Widget
  Widget _buildRedChilli() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.redChilliController,
            hintText: "lbl_red_chilli".tr));
  }

  /// Section Widget
  Widget _buildDate() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.dateController,
            hintText: "lbl_harvest_date".tr,
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  Widget _buildAddress() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.addressController,
            hintText: "lbl_address".tr,
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  Widget _buildName() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.nameController,
            hintText: "lbl_mandi_name".tr,
            hintStyle: theme.textTheme.titleSmall!,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildQuantity() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.quantityController,
            hintText: "lbl_quantity".tr,
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  Widget _buildPrice() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.priceController,
            hintText: "lbl_price".tr,
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  Widget _buildDistanceFromMandi() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.distanceFromMandiController,
            hintText: "msg_distance_from_mandi".tr,
            hintStyle: theme.textTheme.titleSmall!,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildCameraIcon() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, right: 31.h),
            child: Row(children: [
              Column(children: [
                Container(
                    height: 90.adaptSize,
                    width: 90.adaptSize,
                    padding:
                        EdgeInsets.symmetric(horizontal: 26.h, vertical: 29.v),
                    decoration: AppDecoration.outlinePrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder45),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgCameraIcon,
                        height: 27.v,
                        width: 34.h,
                        alignment: Alignment.center)),
                SizedBox(height: 7.v),
                Text("lbl_image_1".tr,
                    style: CustomTextStyles.labelLargeNunitoSansBlack900)
              ]),
              Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Column(children: [
                    SizedBox(
                        width: 196.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 90.adaptSize,
                                  width: 90.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 26.h, vertical: 29.v),
                                  decoration: AppDecoration.outlinePrimary
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder45),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgCameraIcon,
                                      height: 27.v,
                                      width: 34.h,
                                      alignment: Alignment.center)),
                              Container(
                                  height: 90.adaptSize,
                                  width: 90.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 26.h, vertical: 29.v),
                                  decoration: AppDecoration.outlinePrimary
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder45),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgCameraIcon,
                                      height: 27.v,
                                      width: 34.h,
                                      alignment: Alignment.center))
                            ])),
                    SizedBox(height: 7.v),
                    Container(
                        width: 154.h,
                        margin: EdgeInsets.symmetric(horizontal: 21.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("lbl_image_2".tr,
                                  style: CustomTextStyles
                                      .labelLargeNunitoSansBlack900),
                              Text("lbl_image_3".tr,
                                  style: CustomTextStyles
                                      .labelLargeNunitoSansBlack900)
                            ]))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildSubmit() {
    return CustomElevatedButton(
        text: "lbl_submit".tr,
        margin: EdgeInsets.only(left: 7.h, right: 5.h),
        buttonTextStyle: CustomTextStyles.titleLargeRaleway,
        onPressed: () {
          onTapSubmit();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the driverDetailsScreen when the action is triggered.
  onTapSubmit() {
    Get.toNamed(
      AppRoutes.driverDetailsScreen,
    );
  }
}
