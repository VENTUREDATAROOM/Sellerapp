import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/sold_veggies_screen/models/sold_veggies_model.dart';

/// A controller class for the SoldVeggiesScreen.
///
/// This class manages the state of the SoldVeggiesScreen, including the
/// current soldVeggiesModelObj
class SoldVeggiesController extends GetxController {
  Rx<SoldVeggiesModel> soldVeggiesModelObj = SoldVeggiesModel().obs;
}
