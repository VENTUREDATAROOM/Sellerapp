import 'dart:convert';
import 'dart:io';
import 'package:fresh_mandi/data/apiClient/app_url.dart';
import 'package:http_parser/http_parser.dart';
import 'package:flutter/foundation.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/create_account_screen/models/create_account_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime_type/mime_type.dart';
import '../../../repository/registration_repo.dart';
import '../../../widgets/constants.dart';
import '../../../widgets/shared_preference.dart';
import '../../../widgets/utils.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' show basename;

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

  final ImagePicker imagePicker = ImagePicker();
  final pickedImage = Rx<File?>(null);
  String imageFile = "";

  Future<void> pickImage() async {
    try {
      final pickedFile = await imagePicker.pickImage(
        source: ImageSource.camera,
        maxHeight: 150,
        imageQuality: 90, // Adjust image quality as needed
      );

      if (pickedFile != null) {
        pickedImage.value = File(pickedFile.path);
        imageFile = pickedFile.path;
        print('File Path: ${pickedFile?.path}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('error while picking file.');
      }
    }
  }

  void registerApi() async {
    print("IMAGE FILE " + imageFile);
    loading.value = true;

    var uri = Uri.parse(AppUrl.registerUrl);
    var request = http.MultipartRequest("POST", uri);

    // Add headers to the request
    request.headers.addAll({
      'Content-Type': 'multipart/form-data',
      "accept": "application/json",
    });

    request.fields['mobileNumber'] = yourNumberValueController.value.text;
    request.fields['name'] = nameController.value.text;
    request.fields['email'] = emailController.value.text;
    request.fields['password'] = passwordController.value.text;
    request.fields['baseImg'] = ''; // Add the value for 'baseImg' here

    // Add the image file to the multipart request
    request.files
        .add(await http.MultipartFile.fromPath('profileImage', imageFile));

    var response = await request.send();
    print(response);
    if (response.statusCode == 200) {
      // Handle successful response
      var responseBody = await response.stream.bytesToString();
      var data = json.decode(responseBody);

      OneContext().showSnackBar(
          builder: (context) => ShowSnackBar()
              .customBar(data['message'], context!, isSuccessPopup: true));
      if (data[AppConstants.requestCustomCode] == "200") {
        PreferenceUtils.setString(AppConstants.userId,
            yourNumberValueController.value.text.toString());
        PreferenceUtils.setString(
            AppConstants.password, passwordController.value.text.toString());
        PreferenceUtils.setString(
            AppConstants.name, nameController.value.text.toString());
        PreferenceUtils.setString(
            AppConstants.email, emailController.value.text.toString());
        Get.toNamed(AppRoutes.aadharKycScreen);
      }
    } else {
      // Handle error response
      var errorBody = await response.stream.bytesToString();
      print("Error occurred: ${response.statusCode} - ${errorBody}");
      OneContext().showSnackBar(
          builder: (context) => ShowSnackBar().customBar(
              "Error occurred: ${response.statusCode} - ${errorBody}", context!,
              isSuccessPopup: false));
    }

    loading.value = false;
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
