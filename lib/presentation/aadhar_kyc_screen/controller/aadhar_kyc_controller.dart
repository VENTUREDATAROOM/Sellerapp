import 'dart:io';
import 'package:fresh_mandi/widgets/constants.dart';
import 'package:fresh_mandi/widgets/shared_preference.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/data/apiClient/app_url.dart';
import 'package:fresh_mandi/presentation/aadhar_kyc_screen/models/aadhar_kyc_model.dart';
import 'package:flutter/material.dart';
import 'package:fresh_mandi/widgets/utils.dart';
import 'package:image_picker/image_picker.dart';

class AadharKycController extends GetxController {
  TextEditingController cardNumberController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FocusNode yourNumberValueFocusNode = FocusNode();
  Rx<AadharKycModel> aadharKycModelObj = AadharKycModel().obs;
  RxBool loading = false.obs;
  final ImagePicker imagePicker = ImagePicker();
  final pickedImage = Rx<File?>(null);
  final pickedImage2 = Rx<File?>(null);
  String imageFile = "";
  String imageFile2 = "";

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

  Future<void> pickImage2(ImageSource source) async {
    try {
      final pickedFile = await imagePicker.pickImage(
        source: source,
        // maxHeight: 250,
        // imageQuality: 100,
      );

      if (pickedFile != null) {
        pickedImage2.value = File(pickedFile.path);
        imageFile2 = pickedFile.path;
        print('File Path: ${pickedFile?.path}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('error while picking file.');
      }
    }
  }

  Future<void> pickingImage2(BuildContext context) async {
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
                    pickImage2(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text("Camera"),
                  onTap: () {
                    pickImage2(ImageSource.camera);
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

  String token = PreferenceUtils.getString(AppConstants.token);
  // Method to upload PAN card details and image
  Future<void> uploadAadharCardDetails() async {
    loading.value = true;
    var url = Uri.parse(AppUrl.aadharUpload);
    var request = http.MultipartRequest('POST', url);
    request.headers.addAll({
      'Content-Type': 'multipart/form-data',
      "accept": "application/json",
      "Authorization": "Bearer $token",
    });
    // Add text fields
    request.fields['aadharNumber'] = cardNumberController.text;
    request.fields['baseFront'] = "";
    request.fields['baseBack'] = "";
    request.files
        .add(await http.MultipartFile.fromPath('frontPage', imageFile));
    request.files
        .add(await http.MultipartFile.fromPath('backPage', imageFile2));

    try {
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Adhar card Uploaded Sucessfully", context!,
                isSuccessPopup: true));
        print('Upload successful');
        Get.toNamed(
          AppRoutes.panKycScreen,
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

  @override
  void onClose() {
    super.onClose();
    cardNumberController.dispose();
  }
}
