import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/new_password_screen/models/new_password_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NewPasswordScreen.
///
/// This class manages the state of the NewPasswordScreen, including the
/// current newPasswordModelObj
class NewPasswordController extends GetxController {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<NewPasswordModel> newPasswordModelObj = NewPasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
    passwordController.dispose();
  }
}
