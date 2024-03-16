import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/pic_verification_screen/models/pic_verification_model.dart';
import 'package:flutter/material.dart';
import 'package:fresh_mandi/widgets/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import '../../../data/apiClient/app_url.dart';
import '../../../widgets/constants.dart';
import '../../../widgets/shared_preference.dart';

class PicVerificationController extends GetxController {
  TextEditingController dateOfBirthController = TextEditingController();

  Rx<PicVerificationModel> picVerificationModelObj = PicVerificationModel().obs;

  final FocusNode dateOfBirthFocusNode = FocusNode();
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

  String token = PreferenceUtils.getString(AppConstants.token);
  // Method to upload PAN card details and image
  Future<void> uploadPanCardDetails() async {
    var url = Uri.parse(AppUrl.uploadProfile);
    var request = http.MultipartRequest('POST', url);
    request.headers.addAll({
      'Content-Type': 'multipart/form-data',
      "accept": "application/json",
      "Authorization": "Bearer $token",
    });
    // Add text fields
    request.fields['dateofbirth'] = dateOfBirthController.text;
    request.fields['baseProfile'] = "";
    request.files
        .add(await http.MultipartFile.fromPath('profilePic', imageFile));

    try {
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Profile Picture Uploaded Sucessfully", context!,
                isSuccessPopup: true));
        print('Upload successful');
        Get.toNamed(
          AppRoutes.kycCompleteScreen,
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
    }
  }

  @override
  void onClose() {
    super.onClose();
    dateOfBirthController.dispose();
  }
}
