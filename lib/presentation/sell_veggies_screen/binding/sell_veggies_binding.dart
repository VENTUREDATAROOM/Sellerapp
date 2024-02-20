import '../controller/sell_veggies_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SellVeggiesScreen.
///
/// This class ensures that the SellVeggiesController is created when the
/// SellVeggiesScreen is first loaded.
class SellVeggiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SellVeggiesController());
  }
}
