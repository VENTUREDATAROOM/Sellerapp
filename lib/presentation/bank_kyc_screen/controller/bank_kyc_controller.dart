import 'dart:io';
import 'package:fresh_mandi/widgets/constants.dart';
import 'package:fresh_mandi/widgets/shared_preference.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/data/apiClient/app_url.dart';
import 'package:fresh_mandi/presentation/bank_kyc_screen/models/bank_kyc_model.dart';
import 'package:flutter/material.dart';
import 'package:fresh_mandi/widgets/utils.dart';
import 'package:image_picker/image_picker.dart';

class BankKycController extends GetxController {
  TextEditingController frameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController frameController1 = TextEditingController();

  TextEditingController frameController2 = TextEditingController();

  TextEditingController frameController3 = TextEditingController();

  TextEditingController frameController4 = TextEditingController();

  Rx<BankKycModel> bankKycModelObj = BankKycModel().obs;

  final FocusNode frameControllerNode = FocusNode();
  final FocusNode frameController1Node = FocusNode();
  final FocusNode frameController2Node = FocusNode();
  final FocusNode frameController3Node = FocusNode();
  final FocusNode frameController4Node = FocusNode();
  RxBool loading = false.obs;
  final ImagePicker imagePicker = ImagePicker();
  final pickedImage = Rx<File?>(null);
  String imageFile = "";

  Future<void> pickImage(ImageSource source) async {
    try {
      final pickedFile = await imagePicker.pickImage(
        source: source,
        // maxHeight: 250,
        // imageQuality: 100,
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

  Future<void> pickingImage(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Choose Image Source"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text("Gallery"),
                  onTap: () {
                    pickImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text("Camera"),
                  onTap: () {
                    pickImage(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void onClose() {
    super.onClose();
    frameController.dispose();
    frameController1.dispose();
    frameController2.dispose();
    frameController3.dispose();
    frameController4.dispose();
  }

  String token = PreferenceUtils.getString(AppConstants.token);
  // Method to upload PAN card details and image
  Future<void> uploadBankDetails() async {
    loading.value = true;
    var url = Uri.parse(AppUrl.bankDetails);
    var request = http.MultipartRequest('POST', url);
    request.headers.addAll({
      'Content-Type': 'multipart/form-data',
      "accept": "application/json",
      "Authorization": "Bearer $token",
    });
    // Add text fields
    request.fields['accountNumber'] = frameController.text;
    request.fields['confirmAccountNumber'] = frameController1.text;
    request.fields['bankName'] = frameController2.text;
    request.fields['ifscCode'] = frameController3.text;
    request.fields['accountType'] = selectedAccountType.value;
    request.fields['baseBankImg'] = "";
    request.files
        .add(await http.MultipartFile.fromPath('bankDocument', imageFile));

    try {
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Bank Details Uploaded Sucessfully", context!,
                isSuccessPopup: true));
        print('Upload successful');
        Get.toNamed(
          AppRoutes.picVerificationScreen,
        );
      } else {
        print('Upload failed with status: ${response.statusCode}');
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Upload failed with status: ${response.statusCode}", context!,
                isSuccessPopup: false));
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

  RxString selectedAccountType = ''.obs;

  onSelected(dynamic value) {
    for (var element in bankKycModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
        selectedAccountType.value = element.value;
      }
    }
    bankKycModelObj.value.dropdownItemList.refresh();
  }
}
