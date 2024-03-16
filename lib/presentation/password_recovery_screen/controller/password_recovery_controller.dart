import 'package:flutter/material.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/password_recovery_screen/models/password_recovery_model.dart';
import 'package:fresh_mandi/presentation/password_recovery_screen/repo/recovery_repo.dart';
import 'package:fresh_mandi/widgets/constants.dart';
import 'package:fresh_mandi/widgets/shared_preference.dart';
import 'package:fresh_mandi/widgets/utils.dart';

class PasswordRecoveryController extends GetxController {
  RxBool loading = false.obs;
  final _api = VerifyForgotPasswordByEmailOrPhone();
  RxBool isSmsTapped = false.obs;
  RxBool isEmailTapped = false.obs;
  final FocusNode yourNumberValueFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final mobileController = TextEditingController().obs;
  final emailController = TextEditingController().obs;

  Rx<PasswordRecoveryModel> passwordRecoveryModelObj =
      PasswordRecoveryModel().obs;

  void verifyByEmail(BuildContext context) async {
    loading.value = true;
    Map data = {
      "userCode": "string",
      "otp": "string",
      "email": emailController.value.text.toString(),
    };
    try {
      var respData = await _api.verifyEmail(data);
      print("Verify Otp response" + respData.toString());

      Logger();
      print("status of response = ${respData[AppConstants.status]}");
      if (respData[AppConstants.status] == 200) {
        OneContext().hideCurrentSnackBar();
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Otp Sent Sucessfully", context!,
                isSuccessPopup: true));
        PreferenceUtils.setString(AppConstants.userCode,
            respData['result']['userCode']);
        Get.offAndToNamed(AppRoutes.passwordRecoveryCodeScreen);
      } else {
        OneContext().hideCurrentSnackBar();
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Email Doesn't Match, Please input valid Email", context!));
      }
    } catch (e) {
      print('An error occurred: $e');
      OneContext().showSnackBar(
          builder: (context) => ShowSnackBar().customBar(
              "Ooops!! Something Went Wrong, Please try after sometime",
              context!,
              isSuccessPopup: false));
    } finally {
      loading.value = false;
    }
  }

  void verifyByPhone(BuildContext context) async {
    loading.value = true;
    Map data = {
      "userCode": "string",
      "otp": "string",
      "username": mobileController.value.text.toString(),
    };
    try {
      var respData = await _api.verifyNumber(data);
      print("Verify Otp response" + respData.toString());

      Logger();
      print("status of response = ${respData[AppConstants.status]}");
      if (respData[AppConstants.status] == 200) {
        OneContext().hideCurrentSnackBar();
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Otp Sent Sucessfully", context!,
                isSuccessPopup: true));
        PreferenceUtils.setString(AppConstants.userCode,
            respData['result']['userCode']);
        Get.offAndToNamed(AppRoutes.passwordRecoveryCodeScreen);
      } else {
        OneContext().hideCurrentSnackBar();
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Mobile Number Doesn't Match, Please input valid Mobile Number", context!));
      }
    } catch (e) {
      print('An error occurred: $e');
      OneContext().showSnackBar(
          builder: (context) => ShowSnackBar().customBar(
              "Ooops!! Something Went Wrong, Please try after sometime",
              context!,
              isSuccessPopup: false));
    } finally {
      loading.value = false;
    }
  }


}
