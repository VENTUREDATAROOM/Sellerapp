import '../controller/sell_here_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SellHereScreen.
///
/// This class ensures that the SellHereController is created when the
/// SellHereScreen is first loaded.
class SellHereBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SellHereController());
  }
}
