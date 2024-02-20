import 'controller/wrong_password_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:flutter/material.dart';

class WrongPasswordScreen extends GetWidget<WrongPasswordController> {
  const WrongPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildLoginScreen(),
                  SizedBox(height: 9.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllispse01Red400,
                        height: 17.adaptSize,
                        width: 17.adaptSize),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllispse01Red400,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(left: 12.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllispse01Red400,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(left: 12.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllispse01Red400,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(left: 12.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllispse01Red400,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(left: 12.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllispse01Red400,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(left: 12.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllispse01Red400,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(left: 12.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllispse01Red400,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(left: 12.h))
                  ]),
                  SizedBox(height: 41.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtTitle();
                      },
                      child: Text("msg_forgot_your_password".tr,
                          style: CustomTextStyles.bodyMediumGray900)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildLoginScreen() {
    return SizedBox(
        height: 336.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 116.h, vertical: 59.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup22),
                          fit: BoxFit.cover)),
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
                        style: theme.textTheme.headlineMedium)
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text("msg_type_your_password".tr,
                  style: CustomTextStyles.bodyLargeNunitoSans))
        ]));
  }

  /// Navigates to the passwordRecoveryScreen when the action is triggered.
  onTapTxtTitle() {
    Get.toNamed(
      AppRoutes.passwordRecoveryScreen,
    );
  }
}
