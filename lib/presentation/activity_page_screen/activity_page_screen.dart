import 'controller/activity_page_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_image.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ActivityPageScreen extends StatefulWidget {
  ActivityPageScreen({Key? key}) : super(key: key);

  @override
  State<ActivityPageScreen> createState() => _ActivityPageScreenState();
}

class _ActivityPageScreenState extends State<ActivityPageScreen> {
  final activityController = Get.put(ActivityPageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: _buildAppBar(),
      body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 10.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_my_activity".tr,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleLargePoppinsPrimary),
            SizedBox(height: 22.v),
            Padding(
                padding: EdgeInsets.only(left: 10.h),
                child:
                    Text("lbl_net_sale".tr, style: theme.textTheme.labelLarge)),
            SizedBox(height: 6.v),
            Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text("lbl_1038_65".tr,
                    style: CustomTextStyles.titleMediumPrimaryExtraBold)),
            SizedBox(height: 41.v),
            Align(
                alignment: Alignment.centerRight,
                child: Text("lbl_150_65".tr,
                    style: CustomTextStyles.labelMediumRalewayPrimary)),
            SizedBox(height: 5.v),
            _buildVectorEleven(),
            Align(
                alignment: Alignment.center,
                child: Divider(
                    color: appTheme.gray200, indent: 10.h, endIndent: 11.h)),
            SizedBox(height: 4.v),
            _buildLabel(),
            Spacer(flex: 50),
            CustomElevatedButton(
                text: "lbl_sell_here".tr,
                margin: EdgeInsets.only(left: 29.h, right: 15.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL30,
                buttonTextStyle:
                    CustomTextStyles.titleMediumPoppinsOnErrorContainer,
                onPressed: () {
                  onTapSellHere();
                },
                alignment: Alignment.center),
            Spacer(flex: 49)
          ])),
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 56.v,
        leadingWidth: 85.h,
        leading: Container(
            margin: EdgeInsets.only(left: 27.h),
            padding: EdgeInsets.all(3.h),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: fs.Svg(ImageConstant.imgGroup46,
                        color: theme.primaryColor),
                    fit: BoxFit.cover)),
            child: Column(children: [
              SizedBox(height: 1.v),
              AppbarImage(
                  imagePath: ImageConstant.imgImage,
                  margin: EdgeInsets.only(right: 1.h))
            ])),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(26.h, 19.v, 26.h, 23.v),
              onTap: () {
                onTapMegaphone();
              })
        ]);
  }

  /// Section Widget
  Widget _buildVectorEleven() {
    return Container(
        height: 136.v,
        width: 327.h,
        margin: EdgeInsets.only(left: 10.h),
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector11,
              height: 72.v,
              width: 314.h,
              radius: BorderRadius.circular(14.h),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 1.h)),
          CustomImageView(
              imagePath: ImageConstant.imgVector12,
              height: 98.v,
              width: 318.h,
              radius: BorderRadius.circular(14.h),
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 6.v)),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: EdgeInsets.only(left: 304.h),
                  padding: EdgeInsets.all(3.h),
                  decoration: AppDecoration.fillGreenCc
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder11),
                  child: Container(
                      padding: EdgeInsets.all(4.h),
                      decoration: AppDecoration.fillGrayCc.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder7),
                      child: Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(4.h)))))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 10.h),
                  child: SizedBox(
                      height: 114.v,
                      child: VerticalDivider(width: 1.h, thickness: 1.v)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 103.v,
                  child: VerticalDivider(
                      width: 1.h, thickness: 1.v, endIndent: 3.h))),
          Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                  height: 31.v,
                  child: VerticalDivider(
                      width: 1.h, thickness: 1.v, endIndent: 3.h)))
        ]));
  }

  /// Section Widget
  Widget _buildLabel() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 4.h),
        child: Row(children: [
          Text("lbl_3".tr, style: theme.textTheme.labelLarge),
          Spacer(flex: 52),
          Text("lbl_9".tr, style: theme.textTheme.labelLarge),
          Spacer(flex: 47),
          Text("lbl_15".tr, style: theme.textTheme.labelLarge)
        ]));
  }

  /// Navigates to the settingScreen when the action is triggered.
  onTapMegaphone() {
    Get.toNamed(
      AppRoutes.settingScreen,
    );
  }

  /// Navigates to the sellVeggiesScreen when the action is triggered.
  onTapSellHere() {
    Get.toNamed(
      AppRoutes.sellVeggiesScreen,
    );
  }

  /// Navigates to the soldVeggiesScreen when the action is triggered.
  onTapImgOutlinedGraph() {
    Get.toNamed(
      AppRoutes.soldVeggiesScreen,
    );
  }
}
