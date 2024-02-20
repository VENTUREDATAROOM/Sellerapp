import 'controller/kyc_complete_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class KycCompleteScreen extends GetWidget<KycCompleteController> {
  const KycCompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 34.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: 150,
                          width: 150,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgSticker,
                                    color: theme.primaryColor,
                                    height: 150.adaptSize,
                                    width: 150.adaptSize),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: CustomImageView(
                                    imagePath: ImageConstant.tickSticker,
                                    color: Colors.white,
                                    height: 70.adaptSize,
                                    width: 70.adaptSize),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Text("lbl_kyc_completed".tr,
                          style: CustomTextStyles
                              .titleMediumPoppinsPrimaryContainer),
                      SizedBox(height: 93.v),
                      SizedBox(
                          width: 305.h,
                          child: Text("msg_thanks_for_submitting".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .labelLargePoppinsPrimaryContainer)),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                          text: "lbl_back_to_home".tr,
                          margin: EdgeInsets.symmetric(horizontal: 6.h),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 12.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgArrowleftOnerrorcontainer,
                                  color: Colors.white,
                                  height: 16.v,
                                  width: 17.h)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL30,
                          buttonTextStyle: CustomTextStyles
                              .titleMediumPoppinsOnErrorContainer,
                          onPressed: () {
                            onTapBackToHome();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the activityPageScreen when the action is triggered.
  onTapBackToHome() {
    Get.toNamed(
      AppRoutes.activityPageScreen,
    );
  }
}
