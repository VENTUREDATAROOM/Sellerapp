import 'controller/splash_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: _buildSplashScreenImage()),
      ),
    );
  }

  /// Section Widget
  Widget _buildSplashScreenImage() {
    return SizedBox(
        height: 394.v,
        width: 374.h,
        child: Column(
          children: [
            _buildTransparentHeader(),
            SizedBox(height: 13.v),
            CustomImageView(
                imagePath: ImageConstant.imgVectorPrimary,
                color: Colors.black,
                height: 38.v,
                width: 265.h),
          ],
        ));
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
}
