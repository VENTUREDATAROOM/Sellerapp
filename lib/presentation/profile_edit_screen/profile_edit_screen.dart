import 'controller/profile_edit_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/core/utils/validation_functions.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_leading_image.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:fresh_mandi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileEditScreen extends GetWidget<ProfileEditController> {
  ProfileEditScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: 390.h,
                    child: Column(children: [
                      _buildUnsplash(),
                      SizedBox(height: 19.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: _buildProfileEdit1()))
                    ])))));
  }

  /// Section Widget
  Widget _buildUnsplash() {
    return SizedBox(
        height: 234.v,
        width: 373.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUnsplashJmurdhtm7ng,
              height: 142.adaptSize,
              width: 142.adaptSize,
              radius: BorderRadius.circular(71.h),
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 107.h, bottom: 19.v)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 132.h),
                  child: Text("lbl_change_picture".tr,
                      style: CustomTextStyles.bodySmallPoppins))),
          CustomImageView(
              imagePath: ImageConstant.imgGroup36,
              height: 223.v,
              width: 335.h,
              alignment: Alignment.topRight),
          CustomAppBar(
              height: 36.v,
              leadingWidth: 43.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowDown,
                  margin: EdgeInsets.only(left: 17.h)),
              centerTitle: true,
              title: AppbarSubtitleTwo(text: "lbl_edit_profile".tr))
        ]));
  }

  /// Section Widget
  Widget _buildProfileEdit() {
    return CustomTextFormField(
        controller: controller.profileEditController,
        hintText: "lbl_ajit_singh".tr,
        hintStyle: CustomTextStyles.bodySmallPoppins,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v),
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL8,
        filled: false);
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "msg_ajit_cyberpointmedia_com".tr,
        hintStyle: CustomTextStyles.bodySmallPoppins,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v),
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL8,
        filled: false);
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
        controller: controller.phoneNumberController,
        hintText: "lbl_8299188700".tr,
        hintStyle: CustomTextStyles.bodySmallPoppins,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v),
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL8,
        filled: false);
  }

  /// Section Widget
  Widget _buildAddress() {
    return CustomTextFormField(
        controller: controller.addressController,
        hintText: "lbl_delhi".tr,
        hintStyle: CustomTextStyles.bodySmallPoppins,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v),
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL8,
        filled: false);
  }

  /// Section Widget
  Widget _buildUpdate() {
    return CustomElevatedButton(
        height: 40.v,
        text: "lbl_update".tr,
        margin: EdgeInsets.only(left: 18.h, right: 17.h),
        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
        buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer,
        onPressed: () {
          onTapUpdate();
        });
  }

  /// Section Widget
  Widget _buildProfileEdit1() {
    return Container(
        margin: EdgeInsets.only(bottom: 5.v),
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_username".tr,
                  style: CustomTextStyles.titleSmallPrimary)),
          SizedBox(height: 2.v),
          _buildProfileEdit(),
          SizedBox(height: 18.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_email_i_d".tr,
                  style: CustomTextStyles.titleSmallPrimary)),
          SizedBox(height: 2.v),
          _buildEmail(),
          SizedBox(height: 15.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_phone_number".tr,
                  style: CustomTextStyles.titleSmallPrimary)),
          SizedBox(height: 5.v),
          _buildPhoneNumber(),
          SizedBox(height: 18.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_address".tr,
                  style: CustomTextStyles.titleSmallPrimary)),
          SizedBox(height: 2.v),
          _buildAddress(),
          SizedBox(height: 65.v),
          _buildUpdate()
        ]));
  }

  /// Navigates to the settingScreen when the action is triggered.
  onTapUpdate() {
    Get.toNamed(
      AppRoutes.settingScreen,
    );
  }
}
