import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/profile_edit_screen/models/profile_edit_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileEditScreen.
///
/// This class manages the state of the ProfileEditScreen, including the
/// current profileEditModelObj
class ProfileEditController extends GetxController {
  TextEditingController profileEditController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  Rx<ProfileEditModel> profileEditModelObj = ProfileEditModel().obs;

  @override
  void onClose() {
    super.onClose();
    profileEditController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    addressController.dispose();
  }
}
