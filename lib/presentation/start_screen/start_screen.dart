import 'controller/start_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:fresh_mandi/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:fresh_mandi/presentation/a_start_dialog/a_start_dialog.dart';
import 'package:fresh_mandi/presentation/a_start_dialog/controller/a_start_controller.dart';

class StartScreen extends GetWidget<StartController> {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(height: 100.v),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: [
                _buildTransparentHeader(),
                SizedBox(height: 13.v),
                CustomImageView(
                    imagePath: ImageConstant.imgVectorPrimary,
                    color: Colors.black,
                    height: 38.v,
                    width: 265.h),
                SizedBox(height: 20.v),
                SizedBox(
                    width: 240.h,
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "\n".tr,
                              style: CustomTextStyles
                                  .bodyLargeNunitoSanscc4e6c16
                                  .copyWith(height: 1.74)),
                          TextSpan(
                              text: "msg_join_the_future2".tr,
                              style: CustomTextStyles
                                  .titleMediumNunitoSanscc4e6c16)
                        ]),
                        textAlign: TextAlign.center)),
                // SizedBox(height: 10.v),
                CustomElevatedButton(
                    text: "msg_let_s_get_started".tr,
                    margin: EdgeInsets.symmetric(horizontal: 20.h),
                    onPressed: () {
                      onTapLetsGetStarted();
                    }),
                SizedBox(height: 10.v),
                _buildTransparentWork()
              ])))
            ])));
  }

  /// Section Widget
  Widget _buildTransparentHeader() {
    return SizedBox(
        height: 333.v,
        width: 374.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTransparentHea,
              height: 63.v,
              width: 73.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 47.h)),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 330.v,
                  width: 374.h,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.img3032Removebg1,
                        height: 330.v,
                        width: 374.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 99.h, right: 21.h, bottom: 12.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgVectorWhiteA70022x169,
                                      color: Colors.white,
                                      height: 22.v,
                                      width: 169.h),
                                  SizedBox(height: 39.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 33.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgTransparentJal,
                                                    height: 84.v,
                                                    width: 109.h,
                                                    margin: EdgeInsets.only(
                                                        top: 7.v)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRedChilli,
                                                    height: 80.v,
                                                    width: 112.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 11.v))
                                              ])))
                                ])))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildTransparentWork() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
            opacity: 0.9,
            child: Padding(
                padding: EdgeInsets.only(top: 5.v, bottom: 3.v),
                child: Text("msg_i_already_have_an".tr,
                    style: CustomTextStyles.titleSmallNunitoSansGray900))),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(7.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRightOnerrorcontainer,
              color: Colors.white,
            ),
            onTap: () {
              onTapArrowalreadyHaveAccount();
            },
          ),
        )
      ],
    );
  }

  /// Displays a dialog with the [AStartDialog] content.
  onTapLetsGetStarted() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: AStartDialog(
        Get.put(
          AStartController(),
        ),
      ),
    ));
  }

  /// Navigate to Login Screen on tap
  onTapArrowalreadyHaveAccount() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
