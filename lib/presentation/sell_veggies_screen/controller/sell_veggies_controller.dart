import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/sell_veggies_screen/models/sell_veggies_model.dart';

/// A controller class for the SellVeggiesScreen.
///
/// This class manages the state of the SellVeggiesScreen, including the
/// current sellVeggiesModelObj
class SellVeggiesController extends GetxController {
  Rx<SellVeggiesModel> sellVeggiesModelObj = SellVeggiesModel().obs;
}
