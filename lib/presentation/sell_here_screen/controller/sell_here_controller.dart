import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/sell_here_screen/models/sell_here_model.dart';
import 'package:flutter/material.dart';

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
      }
    }
    sellHereModelObj.value.dropdownItemList.refresh();
  }
}
