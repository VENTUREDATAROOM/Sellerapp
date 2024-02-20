import '../controller/password_recovery_controller.dart';
import '../models/smscomponentlist_item_model.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmscomponentlistItemWidget extends StatelessWidget {
  SmscomponentlistItemWidget(
    this.smscomponentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SmscomponentlistItemModel smscomponentlistItemModelObj;

  var controller = Get.find<PasswordRecoveryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
            child: Obx(
              () => Text(
                smscomponentlistItemModelObj.title!.value,
                style: CustomTextStyles.titleSmallRalewayPrimaryBold,
              ),
            ),
          ),
          Container(
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(left: 49.h),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.outlineOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder11,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: smscomponentlistItemModelObj.image!.value,
                height: 4.v,
                width: 6.h,
                alignment: Alignment.centerRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
