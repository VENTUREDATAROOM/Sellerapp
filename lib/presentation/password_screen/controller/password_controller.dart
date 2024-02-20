import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/password_screen/models/password_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the PasswordScreen.
///
/// This class manages the state of the PasswordScreen, including the
/// current passwordModelObj
class PasswordController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<PasswordModel> passwordModelObj = PasswordModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
