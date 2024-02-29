import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/login_screen/login_repo/login_repo.dart';
import 'package:fresh_mandi/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:fresh_mandi/widgets/constants.dart';
import 'package:fresh_mandi/widgets/shared_preference.dart';
import 'package:fresh_mandi/widgets/utils.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  final _api = LoginRepository();
  final mobileController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode yourNumberValueFocusNode = FocusNode();
  Rx<LoginModel> loginModelObj = LoginModel().obs;
  RxBool loading = false.obs;
  Rx<bool> isShowPassword = true.obs;

  Future<void> loginApi() async {
    loading.value = true;
    Map data = {
      'mobileNumber': mobileController.value.text,
      'password': passwordController.value.text,
      "otpgen": "string",
    };
    var respData = await _api.loginApi(data);
    print("@@@@@@@@@@@@@@@@@@@@@" + respData.toString());
    loading.value = false;
    Logger();
    print("status of response = ${respData[AppConstants.status]}");
    if (respData[AppConstants.status] == 200) {
      OneContext().hideCurrentSnackBar();
      OneContext().showSnackBar(
          builder: (context) => ShowSnackBar()
              .customBar("Welcome Back!", context!, isSuccessPopup: true));
      PreferenceUtils.setString(
          AppConstants.userId, mobileController.value.text.toString());
      PreferenceUtils.setString(
          AppConstants.password, passwordController.value.text.toString());
      // PreferenceUtils.setString(
      //     AppConstants.token, respData[AppConstants.requestToken]);
      Get.offAndToNamed(AppRoutes.passwordScreen);
    } else {
      OneContext().hideCurrentSnackBar();
      OneContext().showSnackBar(
          builder: (context) => ShowSnackBar()
              .customBar('Mobile Number And Password Did Not Match', context!));
      // Utils.snackBar('Login Error', 'User Name And Password Did Not Match');
    }
  }

  @override
  void onClose() {
    super.onClose();
    mobileController.value.text = '';
    passwordController.value.text = '';
    passwordFocusNode.dispose();
    yourNumberValueFocusNode.dispose();
  }
}
