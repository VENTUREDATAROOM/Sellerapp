import 'package:flutter/material.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/password_recovery_screen/models/password_recovery_model.dart';

/// A controller class for the PasswordRecoveryScreen.
///
/// This class manages the state of the PasswordRecoveryScreen, including the
/// current passwordRecoveryModelObj
class PasswordRecoveryController extends GetxController {
  RxBool isSmsTapped = false.obs;
  RxBool isEmailTapped = false.obs;
  final FocusNode yourNumberValueFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final mobileController = TextEditingController().obs;
  final emailController = TextEditingController().obs;

  Rx<PasswordRecoveryModel> passwordRecoveryModelObj =
      PasswordRecoveryModel().obs;
}
