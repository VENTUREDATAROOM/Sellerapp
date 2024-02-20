import '../controller/sold_veggies_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SoldVeggiesScreen.
///
/// This class ensures that the SoldVeggiesController is created when the
/// SoldVeggiesScreen is first loaded.
class SoldVeggiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SoldVeggiesController());
  }
}
