import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/password_screen/models/password_model.dart';
import 'package:fresh_mandi/presentation/password_screen/repo/otp_repository.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';
import '../../../widgets/constants.dart';
import '../../../widgets/shared_preference.dart';
import '../../../widgets/utils.dart';

class PasswordController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;
  RxBool loading = false.obs;
  final _api = OtpRepository();
  Rx<PasswordModel> passwordModelObj = PasswordModel().obs;
  String profileImage = "";
  String profileName = "";
  String mobileNumber = "";
  String passwordString = "";
  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    profileImage = PreferenceUtils.getString(AppConstants.profileImage);
    profileName = PreferenceUtils.getString(AppConstants.name);
    mobileNumber = PreferenceUtils.getString(AppConstants.userId);
    listenForCode();
  }

  Future<void> verifyOtp(BuildContext context) async {
    loading.value = true;
    String mobile = PreferenceUtils.getString(AppConstants.userId);
    String password = PreferenceUtils.getString(AppConstants.password);
    Map data = {
      'mobileNumber': mobile,
      'password': password,
      "otpgen": otpController.value.text,
      "name": "string",
      "baseImg": "string",
      "contentType": "string",
      "userCode": "string",
    };
    try {
      var respData = await _api.verifyOtpApi(data);
      print("Verify Otp response" + respData.toString());

      Logger();
      print("status of response = ${respData[AppConstants.status]}");
      if (respData[AppConstants.status] == 200) {
        OneContext().hideCurrentSnackBar();
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar()
                .customBar("Welcome Back!", context!, isSuccessPopup: true));
        PreferenceUtils.setString(AppConstants.token,
            respData['response'][AppConstants.requestToken]);
        PreferenceUtils.setString(
            AppConstants.userCode, respData['response']['userCode']);

        (passwordString == "Register")
            ? Get.offAndToNamed(AppRoutes.aadharKycScreen)
            : Get.offAndToNamed(AppRoutes.dashboardScreen); //DashboardPage
      } else {
        OneContext().hideCurrentSnackBar();
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Otp Doesn't Match, Please input valid Otp", context!));
        // Utils.snackBar('Login Error', 'User Name And Password Did Not Match');
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
