import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/create_account_screen/models/create_account_model.dart';
import 'package:flutter/material.dart';

import '../../../repository/registration_repo.dart';
import '../../../widgets/constants.dart';
import '../../../widgets/utils.dart';

/// A controller class for the CreateAccountScreen.
///
/// This class manages the state of the CreateAccountScreen, including the
/// current createAccountModelObj
class CreateAccountController extends GetxController {
  final _api = RegisterRepository();

  final nameController = TextEditingController().obs;

  final emailController = TextEditingController().obs;

  final passwordController = TextEditingController().obs;

  final yourNumberValueController = TextEditingController().obs;

  Rx<CreateAccountModel> createAccountModelObj = CreateAccountModel().obs;

  final FocusNode nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode yourNumberValueFocusNode = FocusNode();
  RxBool loading = false.obs;
  Rx<bool> isShowPassword = true.obs;

  void registerApi() {
    loading.value = true;
    Map data = {
      'mobileNumber': yourNumberValueController.value.text,
      "name": nameController.value.text,
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };

    _api.registerApi(data).then((value) {
      loading.value = false;
      OneContext().showSnackBar(
          builder: (context) => ShowSnackBar()
              .customBar(value['message'], context!, isSuccessPopup: true));
      // Utils.snackBar('Registration', value['message']);
      if (value[AppConstants.requestCustomCode] == "200") {
        Get.toNamed(AppRoutes.loginScreen);
      }
    }).onError((error, stackTrace) {
      loading.value = false;
      OneContext().hideCurrentSnackBar();
      OneContext().showSnackBar(
          builder: (context) =>
              ShowSnackBar().customBar(error.toString(), context!));
      // Utils.snackBar('Error', error.toString());
    });
  }

  @override
  void onClose() {
    super.onClose();
    nameController.value.text = '';
    emailController.value.text = '';
    passwordController.value.text = '';
    yourNumberValueController.value.text = '';
    nameFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    yourNumberValueFocusNode.dispose();
  }
}
