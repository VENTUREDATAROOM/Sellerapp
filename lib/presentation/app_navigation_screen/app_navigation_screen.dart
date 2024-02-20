import 'controller/app_navigation_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "28 Driver Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.driverDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "00 Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "01 Start".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.startScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "02 Create Account".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createAccountScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passwordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "05 Password Typing".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passwordTypingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "06 Wrong Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.wrongPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "07 Password Recovery".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.passwordRecoveryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "08 Password Recovery — Code".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.passwordRecoveryCodeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "09 New Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.newPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "11 aadhar kyc".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aadharKycScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "12 aadhar upload kyc".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aadharUploadKycScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "13 pan kyc".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.panKycScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "14 bank kyc".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bankKycScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "15 pic verification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.picVerificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "16 KYC complete".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.kycCompleteScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "17 Activity Page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.activityPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "21 Sales Report".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.salesReportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "22 Sales Report-filter".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.salesReportFilterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "23 Sales Report-filter".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.salesReportFilter1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "24 Sales Report-empty".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.salesReportEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "20 Profile Edit".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileEditScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "19 Setting".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "25 Sold Veggies".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.soldVeggiesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "26 Sell Veggies".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sellVeggiesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "27 Sell Here".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sellHereScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "18 Change Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
