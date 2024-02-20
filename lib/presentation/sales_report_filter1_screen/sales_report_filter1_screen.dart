import 'controller/sales_report_filter1_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_leading_image.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_title.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

class SalesReportFilter1Screen extends GetWidget<SalesReportFilter1Controller> {
  const SalesReportFilter1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildMaximumRowThisWeek(maximum: "lbl_today2".tr),
                          _buildMaximumRowThisWeek(maximum: "lbl_this_week".tr),
                          _buildMaximumRowThisWeek(
                              maximum: "lbl_this_month".tr),
                          _buildComponentTwentyTwoRow(),
                          SizedBox(height: 10.v),
                          _buildApplyStack()
                        ]))))));
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
        title: AppbarTitle(text: "msg_select_time_period".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildComponentTwentyTwoRow() {
    return GestureDetector(
        onTap: () {
          onTapComponentTwentyTwoRow();
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
            decoration: AppDecoration.fillPrimary,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCalendar1Primary,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 3.v),
                  child: Text("lbl_select_date".tr,
                      style:
                          CustomTextStyles.titleSmallRalewayPrimarySemiBold)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkPrimary24x24,
                  color: theme.primaryColor,
                  height: 24.adaptSize,
                  width: 24.adaptSize)
            ])));
  }

  /// Section Widget
  Widget _buildApplyStack() {
    return SizedBox(
        height: 398.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 13.v),
                    decoration: AppDecoration.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.v),
                              child: Text("lbl_from".tr,
                                  style: CustomTextStyles
                                      .titleSmallRalewayBluegray900)),
                          Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: _buildMaximumRowToDate(
                                  dateText: "lbl_03_02_2022".tr)),
                          Padding(
                              padding: EdgeInsets.only(top: 6.v, bottom: 10.v),
                              child: Text("lbl_to".tr,
                                  style: CustomTextStyles
                                      .titleSmallRalewayBluegray900)),
                          Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: _buildMaximumRowToDate(
                                  dateText: "lbl_15_02_2022".tr))
                        ])),
                Obx(() => SizedBox(
                    height: 309.v,
                    width: double.maxFinite,
                    child: CalendarDatePicker2(
                        config: CalendarDatePicker2Config(
                            calendarType: CalendarDatePicker2Type.single,
                            firstDate: DateTime(DateTime.now().year - 5),
                            lastDate: DateTime(DateTime.now().year + 5),
                            firstDayOfWeek: 0,
                            weekdayLabelTextStyle: TextStyle(
                                color: appTheme.blueGray900,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700),
                            dayTextStyle: TextStyle(
                                color: appTheme.gray300,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600),
                            disabledDayTextStyle: TextStyle(
                                color: appTheme.gray300,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600),
                            weekdayLabels: ["S", "M", "T", "W", "T", "F", "S"]),
                        value: controller.selectedDatesFromCalendar1.value,
                        onValueChanged: (dates) {
                          controller.selectedDatesFromCalendar1.value = dates;
                        })))
              ])),
          CustomElevatedButton(
              height: 50.v,
              width: 327.h,
              text: "lbl_apply".tr,
              buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer,
              onPressed: () {
                onTapApply();
              },
              alignment: Alignment.bottomCenter)
        ]));
  }

  /// Common widget
  Widget _buildMaximumRowThisWeek({required String maximum}) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
        decoration: AppDecoration.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text(maximum,
                  style: CustomTextStyles.titleSmallRalewayBluegray900
                      .copyWith(color: appTheme.blueGray900))),
          CustomImageView(height: 24.adaptSize, width: 24.adaptSize)
        ]));
  }

  /// Common widget
  Widget _buildMaximumRowToDate({required String dateText}) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgLabel, height: 29.v, width: 110.h),
      Padding(
          padding: EdgeInsets.only(top: 7.v, bottom: 4.v),
          child: Text(dateText,
              style: CustomTextStyles.titleSmallRalewayBluegray900SemiBold
                  .copyWith(color: appTheme.blueGray900)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the salesReportFilterScreen when the action is triggered.
  onTapComponentTwentyTwoRow() {
    Get.toNamed(
      AppRoutes.salesReportFilterScreen,
    );
  }

  /// Navigates to the salesReportScreen when the action is triggered.
  onTapApply() {
    Get.toNamed(
      AppRoutes.salesReportScreen,
    );
  }
}
