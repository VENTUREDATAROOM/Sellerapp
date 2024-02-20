import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/aadhar_kyc_screen/models/aadhar_kyc_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AadharKycScreen.
///
/// This class manages the state of the AadharKycScreen, including the
/// current aadharKycModelObj
class AadharKycController extends GetxController {
  TextEditingController cardNumberController = TextEditingController();

  Rx<AadharKycModel> aadharKycModelObj = AadharKycModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardNumberController.dispose();
  }
}
