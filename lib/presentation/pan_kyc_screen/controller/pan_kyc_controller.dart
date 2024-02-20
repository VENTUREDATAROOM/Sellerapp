import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/pan_kyc_screen/models/pan_kyc_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PanKycScreen.
///
/// This class manages the state of the PanKycScreen, including the
/// current panKycModelObj
class PanKycController extends GetxController {
  TextEditingController cardNumberController = TextEditingController();

  Rx<PanKycModel> panKycModelObj = PanKycModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardNumberController.dispose();
  }
}
