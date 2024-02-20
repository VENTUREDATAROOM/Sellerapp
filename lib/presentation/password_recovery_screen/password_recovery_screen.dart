import '../password_recovery_screen/widgets/smscomponentlist_item_widget.dart';
import 'controller/password_recovery_controller.dart';
import 'models/smscomponentlist_item_model.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PasswordRecoveryScreen extends GetWidget<PasswordRecoveryController> {
  const PasswordRecoveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildPasswordRecoveryColumn(),
                  SizedBox(height: 8.v),
                  Text("msg_password_recovery".tr,
                      style: CustomTextStyles.titleLargeRalewayGray900),
                  SizedBox(height: 7.v),
                  SizedBox(
                      width: 248.h,
                      child: Text("msg_how_you_would_like".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeNunitoSans
                              .copyWith(height: 1.42))),
                  SizedBox(height: 29.v),
                  _buildSmsComponentList(),
                  Spacer(),
                  CustomElevatedButton(
                      text: "lbl_next".tr,
                      margin: EdgeInsets.symmetric(horizontal: 20.h),
                      onPressed: () {
                        onTapNext();
                      }),
                  SizedBox(height: 26.v),
                  Opacity(
                      opacity: 0.9,
                      child: GestureDetector(
                          onTap: () {
                            onTapTxtTitle();
                          },
                          child: Text("lbl_cancel".tr,
                              style: theme.textTheme.bodyMedium))),
                  SizedBox(height: 69.v)
                ]))));
  }

  /// Section Widget
  Widget _buildPasswordRecoveryColumn() {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
            width: 354.h,
            margin: EdgeInsets.only(left: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 114.h, vertical: 7.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgGroup36),
                    fit: BoxFit.cover)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 97.v),
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
                      alignment: Alignment.center))
            ])));
  }

  /// Section Widget
  Widget _buildSmsComponentList() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 88.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: controller.passwordRecoveryModelObj.value
                .smscomponentlistItemList.value.length,
            itemBuilder: (context, index) {
              SmscomponentlistItemModel model = controller
                  .passwordRecoveryModelObj
                  .value
                  .smscomponentlistItemList
                  .value[index];
              return SmscomponentlistItemWidget(model);
            })));
  }

  /// Navigates to the passwordRecoveryCodeScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.passwordRecoveryCodeScreen,
    );
  }

  /// Navigates to the passwordScreen when the action is triggered.
  onTapTxtTitle() {
    Get.toNamed(
      AppRoutes.passwordScreen,
    );
  }
}
