import 'controller/password_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/custom_icon_button.dart';
import 'package:fresh_mandi/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends GetWidget<PasswordController> {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup22,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    Column(children: [
                      _buildPasswordScreen(),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 81.h),
                          child: Obx(() => CustomPinCodeTextField(
                              context: Get.context!,
                              controller: controller.otpController.value,
                              onChanged: (value) {
                                Get.toNamed(
                                  AppRoutes.aadharKycScreen,
                                );
                              }))),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: GestureDetector(
                            onTap: () {
                              onTapNotYou();
                            },
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Opacity(
                                      opacity: 0.9,
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 9.v),
                                          child: Text("lbl_not_you".tr,
                                              style:
                                                  theme.textTheme.bodyMedium))),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: CustomIconButton(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          padding: EdgeInsets.all(7.h),
                                          child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgArrowRightOnerrorcontainer,
                                            color: Colors.white,
                                          )))
                                ])),
                      )
                    ]),
                  ],
                ))));
  }

  /// Section Widget
  Widget _buildPasswordScreen() {
    return SizedBox(
        height: 376.v,
        width: double.maxFinite,
        child: Column(children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 100.h, vertical: 40.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 45.v),
                    Container(
                        height: 105.adaptSize,
                        width: 105.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlineBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder52),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgImage,
                            height: 91.adaptSize,
                            width: 91.adaptSize,
                            alignment: Alignment.center)),
                    SizedBox(height: 32.v),
                    Text("lbl_hello_ajit".tr,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: theme.textTheme.headlineMedium)
                  ]))),
          Align(
            alignment: Alignment.bottomCenter,
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "msg_enter_4_digits_code".tr,
                      style: CustomTextStyles.bodyLargeNunitoSanscc4e6c16
                          .copyWith(height: 1.74)),
                  TextSpan(
                      text: "lbl_98_00".tr,
                      style: CustomTextStyles.titleMediumNunitoSanscc4e6c16)
                ]),
                textAlign: TextAlign.center),
          ),
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapNotYou() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
