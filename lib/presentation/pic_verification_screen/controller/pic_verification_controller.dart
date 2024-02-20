import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/pic_verification_screen/models/pic_verification_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PicVerificationScreen.
///
/// This class manages the state of the PicVerificationScreen, including the
/// current picVerificationModelObj
class PicVerificationController extends GetxController {
  TextEditingController dateOfBirthController = TextEditingController();

  Rx<PicVerificationModel> picVerificationModelObj = PicVerificationModel().obs;

  @override
  void onClose() {
    super.onClose();
    dateOfBirthController.dispose();
  }
}
