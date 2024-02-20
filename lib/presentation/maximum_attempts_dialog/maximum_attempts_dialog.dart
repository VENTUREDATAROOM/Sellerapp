import 'controller/maximum_attempts_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MaximumAttemptsDialog extends StatelessWidget {
  MaximumAttemptsDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  MaximumAttemptsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347.h,
      padding: EdgeInsets.symmetric(
        horizontal: 61.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 38.v),
          SizedBox(
            width: 223.h,
            child: Text(
              "msg_you_reached_out".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumGray900.copyWith(
                height: 1.44,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          CustomElevatedButton(
            height: 50.v,
            text: "lbl_okay".tr,
            margin: EdgeInsets.symmetric(horizontal: 11.h),
            buttonStyle: CustomButtonStyles.fillGray,
          ),
        ],
      ),
    );
  }
}
