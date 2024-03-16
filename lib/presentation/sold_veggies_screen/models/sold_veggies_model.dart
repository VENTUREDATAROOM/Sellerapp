import '../../../core/app_export.dart';
import 'grid_item_model.dart';

/// This class defines the variables used in the [sold_veggies_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SoldVeggiesModel {
  Rx<List<GridItemModel>> gridItemList = Rx([
    GridItemModel(
        image: ImageConstant.imgCabbage1.obs,
        title: "Cabbage".obs,
        quantity: "qty: 7 quintal".obs,
        price: "price: ₹8190".obs),
  ]);
}
