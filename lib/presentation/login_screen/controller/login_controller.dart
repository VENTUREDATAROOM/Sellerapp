import 'dart:convert';
import 'dart:developer';

import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/login_screen/login_repo/login_repo.dart';
import 'package:fresh_mandi/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:fresh_mandi/widgets/constants.dart';
import 'package:fresh_mandi/widgets/shared_preference.dart';
import 'package:fresh_mandi/widgets/utils.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../../../data/apiClient/app_url.dart';

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
    var request = http.MultipartRequest('POST', Uri.parse(AppUrl.loginUrl));

    request.fields['mobileNumber'] = mobileController.value.text;
    request.fields['password'] = passwordController.value.text;
    request.fields['otpgen'] = "";
    request.fields['name'] = "";
    request.fields['baseImg'] = "";
    request.fields['contentType'] = "";
    request.fields['userCode'] = "";

    // Add headers to the request
    request.headers.addAll({
      'Content-Type': 'multipart/form-data',
      "accept": "application/json",
    });

    var response = await request.send();

    try {
      if (response.statusCode == 200) {
        print('Uploaded!');
        // Read the response body
        var responseBody = await response.stream.bytesToString();
        print("login response json == $responseBody");
        // Decode the JSON response
        Map<String, dynamic> decodedResponse = jsonDecode(responseBody);

        // Access each field separately
        print("Mobile Number: ${decodedResponse['result']['mobileNumber']}");
        print("Password: ${decodedResponse['result']['password']}");
        print("Otpgen: ${decodedResponse['result']['otpgen']}");
        print("Name: ${decodedResponse['result']['name']}");
        print("BaseImg: ${decodedResponse['result']['baseImg']}");
        OneContext().hideCurrentSnackBar();
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar()
                .customBar("Welcome Back!", context!, isSuccessPopup: true));
        PreferenceUtils.setString(
            AppConstants.userId, decodedResponse['result']['mobileNumber']);
        PreferenceUtils.setString(
            AppConstants.password, passwordController.value.text.toString());
        PreferenceUtils.setString(
            AppConstants.profileImage, decodedResponse['result']['baseImg']);
        PreferenceUtils.setString(
            AppConstants.name, decodedResponse['result']['name']);
           
        // PreferenceUtils.setString(
        //     AppConstants.token, respData[AppConstants.requestToken]);
        Get.offAndToNamed(AppRoutes.passwordScreen);
      } else {
        OneContext().hideCurrentSnackBar();
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                'Mobile Number And Password Did Not Match', context!));
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

  @override
  void onClose() {
    // super.onClose();
    mobileController.value.text = '';
    passwordController.value.text = '';
    // passwordFocusNode.dispose();
    // yourNumberValueFocusNode.dispose();
  }
}
