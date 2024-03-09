import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'controller/create_account_controller.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/core/utils/validation_functions.dart';
import 'package:fresh_mandi/widgets/custom_elevated_button.dart';
import 'package:fresh_mandi/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreateAccountScreen extends StatefulWidget {
  CreateAccountScreen({Key? key}) : super(key: key);
  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  CreateAccountController createAccountController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SizedBox(
              width: SizeUtils.width,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup59,
                  ),
                  SingleChildScrollView(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Form(
                          key: _formKey,
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Column(children: [
                                _buildCreateAccountTitle(context),
                                SizedBox(height: 29.v),
                                _buildName(),
                                SizedBox(height: 7.v),
                                _buildEmail(),
                                SizedBox(height: 7.v),
                                _buildPassword(),
                                SizedBox(height: 7.v),
                                _buildYourNumberValue(),
                                SizedBox(height: 54.v),
                                _buildDoneButton(),
                                SizedBox(height: 26.v),
                                Opacity(
                                    opacity: 0.9,
                                    child: TextButton(
                                      child: Text(
                                        "lbl_cancel".tr,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    )),
                                SizedBox(height: 5.v)
                              ])))),
                ],
              ))),
    ));
  }

  /// Section Widget
  Widget _buildCreateAccountTitle(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.45,
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 25.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.v),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                "lbl_create_account".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.displayMedium!.copyWith(height: 1.08),
              ),
            ),
            SizedBox(height: 50.v),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 80,
                width: 80,
                // margin: EdgeInsets.only(left: 30.h),
                child: createAccountController.imageFile.isEmpty
                    ? CustomImageView(
                        imagePath: ImageConstant.imgCameraIcon,
                        color: theme.colorScheme.primary,
                        height: 120.adaptSize,
                        width: 120.adaptSize,
                        onTap: () {
                          createAccountController.pickImage();
                        },
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          shape: BoxShape.circle,
                        ),
                        height: 120.adaptSize,
                        width: 120.adaptSize,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              60.0), 
                          child: Image.file(
                            createAccountController.pickedImage.value!,
                            height: 120.adaptSize,
                            width: 120.adaptSize,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: CustomTextFormField(
            focusNode: createAccountController.nameFocusNode,
            controller: createAccountController.nameController.value,
            hintText: "lbl_name".tr,
            hintStyle: theme.textTheme.titleSmall!,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: CustomTextFormField(
            focusNode: createAccountController.emailFocusNode,
            controller: createAccountController.emailController.value,
            hintText: "lbl_email".tr,
            hintStyle: theme.textTheme.titleSmall!,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Obx(() => CustomTextFormField(
            focusNode: createAccountController.passwordFocusNode,
            controller: createAccountController.passwordController.value,
            hintText: "lbl_password".tr,
            hintStyle: theme.textTheme.titleSmall!,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
                onTap: () {
                  createAccountController.isShowPassword.value =
                      !createAccountController.isShowPassword.value;
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 18.v, 19.h, 18.v),
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
            obscureText: createAccountController.isShowPassword.value,
            contentPadding:
                EdgeInsets.only(left: 19.h, top: 15.v, bottom: 15.v))));
  }

  /// Section Widget
  Widget _buildYourNumberValue() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: CustomTextFormField(
            focusNode: createAccountController.yourNumberValueFocusNode,
            controller: createAccountController.yourNumberValueController.value,
            hintText: "lbl_your_number".tr,
            hintStyle: theme.textTheme.titleSmall!,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.number,
            validator: (value) {
              if (!isNumeric(value)) {
                return "err_msg_please_enter_valid_number".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildDoneButton() {
    return CustomElevatedButton(
        text: "lbl_done".tr,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        onPressed: () {
          onTapDoneButton();
        });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapDoneButton() {
    if (kDebugMode) {
      print(_formKey.currentState!.validate());
    }
    if (_formKey.currentState!.validate()) {
      createAccountController.registerApi();
    }
  }
}
