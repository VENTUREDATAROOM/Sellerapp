import 'package:flutter/widgets.dart';

import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_text_form_field.dart';
import '../password_recovery_screen/widgets/smscomponentlist_item_widget.dart';
import 'controller/password_recovery_controller.dart';
import 'models/smscomponentlist_item_model.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  PasswordRecoveryScreen({Key? key}) : super(key: key);

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  PasswordRecoveryController Controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    onTapNext(context);
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
            ])));
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
    return SmscomponentlistItemWidget(
      onSmsTap: () {
        print("SMS tapped");
        // Handle SMS tap
        Controller.isSmsTapped.value = true;
        Controller.isEmailTapped.value = false;
      },
      onEmailTap: () {
        print("Email tapped");
        // Handle Email tap
        Controller.isEmailTapped.value = true;
        Controller.isSmsTapped.value = false;
      },
    );
  }

  void onTapNext(BuildContext context) {
    if (Controller.isSmsTapped.value) {
      // If SMS was tapped, show the bottom sheet for phone number input
      showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  appTheme.lightGreen100,
                  appTheme.lightGreen300Cc
                ],
                stops: <double>[0, 1],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                    20.0), // Adjust the radius and multiplication factor as needed
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Wrap(
              children: <Widget>[
                CustomTextFormField(
                    focusNode: Controller.yourNumberValueFocusNode,
                    controller: Controller.mobileController.value,
                    hintText: "lbl_your_number".tr,
                    hintStyle: theme.textTheme.titleSmall!,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.number,
                    validator: (value) {
                      if (value == null ||
                          (!isValidPhone(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_number".tr;
                      }
                      return null;
                    }),
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CustomElevatedButton(
                    height: 50.v,
                    width: 150.h,
                    text: "lbl_Send_otp".tr,
                    buttonStyle: CustomButtonStyles.fillOrange,
                    onPressed: () {
                      Get.toNamed(
                        AppRoutes.passwordRecoveryCodeScreen,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    } else if (Controller.isEmailTapped.value) {
      // If Email was tapped, show the bottom sheet for Email input
      showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  appTheme.lightGreen100,
                  appTheme.lightGreen300Cc
                ],
                stops: <double>[0, 1],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Wrap(
              children: <Widget>[
                CustomTextFormField(
                    focusNode: Controller.emailFocusNode,
                    controller: Controller.emailController.value,
                    hintText: "lbl_email".tr,
                    hintStyle: theme.textTheme.titleSmall!,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_email".tr;
                      }
                      return null;
                    }),
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CustomElevatedButton(
                    height: 50.v,
                    width: 150.h,
                    text: "lbl_Send_otp".tr,
                    buttonStyle: CustomButtonStyles.fillOrange,
                    onPressed: () {
                      Get.toNamed(
                        AppRoutes.passwordRecoveryCodeScreen,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    } else {
      // If SMS was not tapped, proceed to the next screen
      Get.toNamed(
        AppRoutes.loginScreen,
      );
    }
  }

  /// Navigates to the passwordScreen when the action is triggered.
  onTapTxtTitle() {
    Get.back();
  }
}
