import 'package:flutter/material.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/password_recovery_code_screen/models/password_recovery_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';

/// A controller class for the PasswordRecoveryCodeScreen.
///
/// This class manages the state of the PasswordRecoveryCodeScreen, including the
/// current passwordRecoveryCodeModelObj
class PasswordRecoveryCodeController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;
  RxBool loading = false.obs;
  Rx<PasswordRecoveryCodeModel> passwordRecoveryCodeModelObj =
      PasswordRecoveryCodeModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  void onInit() {
    super.onInit();
    listenForCode();
  }
}
