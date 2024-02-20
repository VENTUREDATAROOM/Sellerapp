import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/bank_kyc_screen/models/bank_kyc_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BankKycScreen.
///
/// This class manages the state of the BankKycScreen, including the
/// current bankKycModelObj
class BankKycController extends GetxController {
  TextEditingController frameController = TextEditingController();

  TextEditingController frameController1 = TextEditingController();

  TextEditingController frameController2 = TextEditingController();

  TextEditingController frameController3 = TextEditingController();

  TextEditingController frameController4 = TextEditingController();

  Rx<BankKycModel> bankKycModelObj = BankKycModel().obs;

  @override
  void onClose() {
    super.onClose();
    frameController.dispose();
    frameController1.dispose();
    frameController2.dispose();
    frameController3.dispose();
    frameController4.dispose();
  }
}
