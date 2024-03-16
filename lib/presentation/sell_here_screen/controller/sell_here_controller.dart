import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:fresh_mandi/data/apiClient/app_url.dart';
import 'package:fresh_mandi/widgets/constants.dart';
import 'package:fresh_mandi/widgets/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/sell_here_screen/models/sell_here_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../widgets/shared_preference.dart';

/// A controller class for the SellHereScreen.
///
/// This class manages the state of the SellHereScreen, including the
/// current sellHereModelObj
class SellHereController extends GetxController {
  TextEditingController redChilliController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController quantityController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController distanceFromMandiController = TextEditingController();

  Rx<SellHereModel> sellHereModelObj = SellHereModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  RxBool loading = false.obs;

  int id = 0;
  String name = "";
  String imageUrl = "";
  String productMasterSubCode = "";
  final ImagePicker imagePicker = ImagePicker();
  final pickedImage = Rx<File?>(null);
  String imageFile = "";
  final pickedImage2 = Rx<File?>(null);
  String imageFile2 = "";
  final pickedImage3 = Rx<File?>(null);
  String imageFile3 = "";
  RxString selectedQuality = ''.obs;

  @override
  void onInit() {
    final Map<String, dynamic> args = Get.arguments;
    id = args['id'];
    name = args['productName'];
    imageUrl = args['productImage'];
    productMasterSubCode = args['productMasterSubCode'];
    print("the argument from previous screen is $args");
    redChilliController.text = name;
    super.onInit();
  }

  Future<void> pickImage1() async {
    try {
      final pickedFile = await imagePicker.pickImage(
        source: ImageSource.camera,
        maxHeight: 150,
        imageQuality: 90,
      );

      if (pickedFile != null) {
        pickedImage.value = File(pickedFile.path);
        imageFile = pickedFile.path;
        print('File Path: ${pickedFile.path}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('error while picking file.');
      }
    }
  }

  Future<void> pickImage2() async {
    try {
      final pickedFile = await imagePicker.pickImage(
        source: ImageSource.camera,
        maxHeight: 150,
        imageQuality: 90,
      );

      if (pickedFile != null) {
        pickedImage2.value = File(pickedFile.path);
        imageFile2 = pickedFile.path;
        print('File Path: ${pickedFile.path}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('error while picking file.');
      }
    }
  }

  Future<void> pickImage3() async {
    try {
      final pickedFile = await imagePicker.pickImage(
        source: ImageSource.camera,
        maxHeight: 150,
        imageQuality: 90,
      );

      if (pickedFile != null) {
        pickedImage3.value = File(pickedFile.path);
        imageFile3 = pickedFile.path;
        print('File Path: ${pickedFile.path}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('error while picking file.');
      }
    }
  }

  @override
  void onClose() {
    super.onClose();
    redChilliController.dispose();
    dateController.dispose();
    addressController.dispose();
    nameController.dispose();
    quantityController.dispose();
    priceController.dispose();
    distanceFromMandiController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in sellHereModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
        selectedQuality.value = element.value;
      }
    }
    sellHereModelObj.value.dropdownItemList.refresh();
  }

  Future<void> sellHereDetails() async {
    loading.value = true;
    String userCode = PreferenceUtils.getString(AppConstants.userCode);
    String token = PreferenceUtils.getString(AppConstants.token);
    var url = Uri.parse(AppUrl.sellHere);
    var request = http.MultipartRequest('POST', url);
    request.headers.addAll({
      'Content-Type': 'multipart/form-data',
      "accept": "application/json",
      "Authorization": "Bearer $token",
    });
    request.fields['productName'] = name;
    request.fields['mandiName'] = nameController.text;
    request.fields['quantity'] = quantityController.text;
    request.fields['quality'] = selectedQuality.value;
    request.fields['price'] = priceController.text;
    request.fields['address'] = addressController.text;
    request.fields['distanceFromMandi'] = distanceFromMandiController.text;
    request.fields['harvestDate'] = dateController.text;
    request.fields['ProductMasterSubCode'] = productMasterSubCode;
    request.fields['UserCode'] = userCode;
    if (imageFile.isNotEmpty) {
      request.files
          .add(await http.MultipartFile.fromPath('ListImage', imageFile));
    }
    if (imageFile2.isNotEmpty) {
      request.files
          .add(await http.MultipartFile.fromPath('ListImage', imageFile2));
    }
    if (imageFile3.isNotEmpty) {
      request.files
          .add(await http.MultipartFile.fromPath('ListImage', imageFile3));
    }

    try {
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Order Placed Sucessfully", context!,
                isSuccessPopup: true));
        print('Order placed successful');
        Get.toNamed(
          AppRoutes.driverDetailsScreen,
        );
      } else {
        print('Order failed with status: ${response.statusCode}');
        OneContext().showSnackBar(
            builder: (context) => ShowSnackBar().customBar(
                "Order failed with status: ${response.statusCode}", context!,
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
}
