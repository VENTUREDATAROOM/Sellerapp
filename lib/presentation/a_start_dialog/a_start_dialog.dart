import 'controller/a_start_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class AStartDialog extends StatelessWidget {
  AStartDialog(this.controller, {Key? key}) : super(key: key);

  AStartController controller;
  Future<void> saveLanguagePreference(String languageCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 347.h,
        padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 45.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 15.v),
          Text("msg_select_your_language".tr,
              style: CustomTextStyles.titleMediumPrimaryMedium),
          SizedBox(height: 64.v),
          Padding(
              padding: EdgeInsets.only(right: 7.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(
                        height: 33.v,
                        width: 131.h,
                        text: "lbl_english".tr,
                        onPressed: () async {
                          await saveLanguagePreference("en");
                          Get.updateLocale(Locale("en", "US"));

                          Navigator.of(context).pop(); // Close the popup
                          onTapEnglish();
                        }),
                    CustomElevatedButton(
                      height: 33.v,
                      width: 128.h,
                      text: "lbl_hindi".tr,
                      buttonTextStyle: CustomTextStyles.titleLargeWhiteA700,
                      onPressed: () async {
                        await saveLanguagePreference("hi");
                        Get.updateLocale(Locale("hi", "IN"));
                        Navigator.of(context).pop(); // Close the popup' ;
                        onTapEnglish();
                      },
                    )
                  ]))
        ]));
  }

  /// Navigates to the createAccountScreen when the action is triggered.
  onTapEnglish() {
    Get.toNamed(
      AppRoutes.createAccountScreen,
    );
  }
}
