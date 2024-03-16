import 'package:flutter/material.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/password_recovery_code_screen/models/password_recovery_code_model.dart';
import 'package:fresh_mandi/presentation/password_recovery_code_screen/repo/recovery_code_repo.dart';
import 'package:fresh_mandi/widgets/constants.dart';
import 'package:fresh_mandi/widgets/shared_preference.dart';
import 'package:fresh_mandi/widgets/utils.dart';
import 'package:sms_autofill/sms_autofill.dart';

/// A controller class for the PasswordRecoveryCodeScreen.
///
/// This class manages the state of the PasswordRecoveryCodeScreen, including the
/// current passwordRecoveryCodeModelObj
class PasswordRecoveryCodeController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;
  RxBool loading = false.obs;
  var _api = RecoveryCodeRepo();
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

  Future<void> verifyOtp(BuildContext context) async {
    loading.value = true;
    String userCode = PreferenceUtils.getString(AppConstants.userCode);
    Map data = {
  "userCode": userCode,
   "otp": otpController.value.text,
};
    try {
      var respData = await _api.recoveryCode(data);
      print("Verify Otp response" + respData.toString());

      Logger();
      print("status of response = ${respData[AppConstants.status]}");
      if (respData[AppConstants.status] == 200) {
        OneContext().hideCurrentSnackBar();
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar()
                .customBar("Good to see you!", context!, isSuccessPopup: true));
        PreferenceUtils.setString(AppConstants.token,
            respData['response'][AppConstants.requestToken]);
        PreferenceUtils.setString(
            AppConstants.userCode, respData['response']['userCode']);

        Get.offAndToNamed(AppRoutes.loginScreen); 
      } else {
        OneContext().hideCurrentSnackBar();
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Otp Doesn't Match, Please input valid Otp", context!));
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
