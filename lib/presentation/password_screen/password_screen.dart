import 'dart:convert';

import 'controller/password_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/custom_icon_button.dart';
import 'package:fresh_mandi/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);
  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  PasswordController passwordController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: passwordController.loading.value
                ? Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: CircularProgressIndicator(
                        color: appTheme.lightGreenA70033,
                      ),
                    ),
                  )
                : SizedBox(
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
                                  controller:
                                      passwordController.otpController.value,
                                  onChanged: (value) {
                                    passwordController.verifyOtp(context);
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
                                              padding:
                                                  EdgeInsets.only(top: 9.v),
                                              child: Text("lbl_not_you".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium))),
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
    String base64Image = passwordController.profileImage;

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
                      child: (passwordController.profileImage == "")
                          ? CustomImageView(
                              imagePath: ImageConstant.imgImage,
                              height: 91.adaptSize,
                              width: 91.adaptSize,
                              alignment: Alignment.center)
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image.memory(
                                  height: 120.adaptSize,
                                  width: 120.adaptSize,
                                  fit: BoxFit.cover,
                                  const Base64Decoder().convert(base64Image))),
                    ),
                    SizedBox(height: 32.v),
                    Text(
                        "lbl_hello_ajit".tr +
                            " ${passwordController.profileName.split(' ')[0]} !!",
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
                      text: "+91 ${passwordController.mobileNumber}".tr,
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
