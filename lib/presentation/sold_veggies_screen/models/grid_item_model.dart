import '../../../core/app_export.dart';

/// This class is used in the [grid_item_widget] screen.
class GridItemModel {
  GridItemModel({
    this.image,
    this.title,
    this.quantity,
    this.price,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgCabbage1);
    title = title ?? Rx("Cabbage");
    quantity = quantity ?? Rx("qty: 7 quintal");
    price = price ?? Rx("price: ₹8190");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? quantity;

  Rx<String>? price;

  Rx<String>? id;
}
