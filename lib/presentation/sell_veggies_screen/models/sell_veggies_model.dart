import '../../../core/app_export.dart';
import 'sellveggies_item_model.dart';

/// This class defines the variables used in the [sell_veggies_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SellVeggiesModel {
  Rx<List<SellveggiesItemModel>> sellveggiesItemList = Rx([
    SellveggiesItemModel(
        image: ImageConstant.imgCabbage1.obs, text: "Cabbage".obs),
    SellveggiesItemModel(
        image: ImageConstant.imgPotato.obs, text: "Potato".obs),
    SellveggiesItemModel(
        image: ImageConstant.imgCaluiflower.obs, text: "Cauliflower".obs),
    SellveggiesItemModel(text: "Carrot".obs),
    SellveggiesItemModel(text: "Lattuce".obs),
    SellveggiesItemModel(text: "Tomato".obs)
  ]);
}
