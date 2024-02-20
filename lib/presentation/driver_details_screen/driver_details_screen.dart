import 'controller/driver_details_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_leading_image.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_title.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DriverDetailsScreen extends GetWidget<DriverDetailsController> {
  const DriverDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 57.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildProfileCard(),
                      SizedBox(height: 20.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("msg_request_to_change".tr.toUpperCase(),
                              style:
                                  CustomTextStyles.titleSmallRobotoRed40001)),
                      Spacer(),
                      SizedBox(height: 19.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup,
                          height: 130.v,
                          width: 286.h,
                          margin: EdgeInsets.only(left: 13.h))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_driver_details".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildProfileCard() {
    return Align(
        alignment: Alignment.center,
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: theme.colorScheme.onErrorContainer.withOpacity(1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Container(
                height: 209.v,
                width: 315.h,
                padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 19.v),
                decoration: AppDecoration.outlineBlack
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse2,
                                height: 51.adaptSize,
                                width: 51.adaptSize,
                                radius: BorderRadius.circular(25.h)),
                            SizedBox(height: 9.v),
                            Text("lbl_ekansh_rajput".tr,
                                style: CustomTextStyles
                                    .titleMediumRobotoBluegray90001),
                            SizedBox(height: 8.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLocationPoint,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize),
                                  Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("lbl_gomti_nagar".tr,
                                          style: CustomTextStyles
                                              .bodyMediumRobotoOnPrimaryContainer))
                                ]),
                            SizedBox(height: 8.v),
                            SizedBox(
                                width: 241.h,
                                child: Text("msg_lorem_ipsum_dolor".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyMediumRobotoOnPrimaryContainer
                                        .copyWith(height: 1.43)))
                          ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgPhoto,
                      height: 53.adaptSize,
                      width: 53.adaptSize,
                      radius: BorderRadius.circular(26.h),
                      alignment: Alignment.topCenter)
                ]))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
