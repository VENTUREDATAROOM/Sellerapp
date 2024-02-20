import 'controller/change_password_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/core/utils/validation_functions.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:fresh_mandi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends GetWidget<ChangePasswordController> {
  ChangePasswordScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildChangePasswordForm(),
                    SizedBox(height: 8.v),
                    Text(
                      "lbl_change_password".tr,
                      style: CustomTextStyles.titleLargeRalewayGray900,
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      width: 282.h,
                      margin: EdgeInsets.only(
                        left: 47.h,
                        right: 45.h,
                      ),
                      child: Text(
                        "msg_please_setup_a".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargeNunitoSans.copyWith(
                          height: 1.42,
                        ),
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: CustomTextFormField(
                        controller: controller.passwordController,
                        obscureText: true,
                        borderDecoration: TextFormFieldStyleHelper.fillGrayTL9,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: CustomTextFormField(
                        controller: controller.newpasswordController,
                        hintText: "lbl_new_password".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        obscureText: true,
                        borderDecoration: TextFormFieldStyleHelper.fillGray1,
                      ),
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      text: "lbl_save".tr,
                      margin: EdgeInsets.symmetric(horizontal: 20.h),
                    ),
                    SizedBox(height: 26.v),
                    Opacity(
                      opacity: 0.9,
                      child: Text(
                        "lbl_cancel".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 69.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChangePasswordForm() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 354.h,
        margin: EdgeInsets.only(left: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 114.h,
          vertical: 7.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup36,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 97.v),
            Container(
              height: 105.adaptSize,
              width: 105.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder52,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 91.adaptSize,
                width: 91.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
