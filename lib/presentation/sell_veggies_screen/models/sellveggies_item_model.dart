import '../../../core/app_export.dart';

/// This class is used in the [sellveggies_item_widget] screen.
class SellveggiesItemModel {
  SellveggiesItemModel({
    this.image,
    this.text,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgCabbage1);
    text = text ?? Rx("Cabbage");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? text;

  Rx<String>? id;
}
