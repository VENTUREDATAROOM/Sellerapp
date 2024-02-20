import 'controller/login_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/core/utils/validation_functions.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:fresh_mandi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.bubbles,
              width: double.infinity,
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Form(
                key: _formKey,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 69.v),
                  child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("lbl_login".tr,
                                style: theme.textTheme.displayLarge)),
                        SizedBox(height: 4.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_good_to_see_you".tr,
                                      style: CustomTextStyles
                                          .bodyLargeNunitoSansGray900),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFavorite,
                                      height: 15.adaptSize,
                                      width: 15.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 10.h, top: 3.v, bottom: 7.v))
                                ])),
                        SizedBox(height: 20.v),
                        CustomTextFormField(
                            focusNode: loginController.yourNumberValueFocusNode,
                            controller: loginController.mobileController.value,
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
                        SizedBox(height: 20.v),
                        CustomTextFormField(
                            focusNode: loginController.passwordFocusNode,
                            controller:
                                loginController.passwordController.value,
                            hintText: "lbl_password".tr,
                            hintStyle: theme.textTheme.titleSmall!,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  loginController.isShowPassword.value =
                                      !loginController.isShowPassword.value;
                                },
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 18.v, 19.h, 18.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEye,
                                        color: theme.primaryColor,
                                        height: 15.adaptSize,
                                        width: 15.adaptSize))),
                            suffixConstraints: BoxConstraints(maxHeight: 52.v),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: loginController.isShowPassword.value,
                            contentPadding: EdgeInsets.only(
                                left: 19.h, top: 15.v, bottom: 15.v)),
                        SizedBox(height: 36.v),
                        CustomElevatedButton(
                            text: "lbl_next".tr,
                            onPressed: () {
                              onTapNext();
                            }),
                        SizedBox(height: 16.v),
                        Opacity(
                          opacity: 0.9,
                          child: TextButton(
                            child: Text("lbl_cancel".tr,
                                style: theme.textTheme.bodyMedium),
                            onPressed: () {
                              Get.offAndToNamed(
                                AppRoutes.startScreen,
                              );
                            },
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the passwordScreen when the action is triggered.
  onTapNext() {
    if (_formKey.currentState!.validate()) {
      loginController.loginApi();
    }
  }
}
