import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/sell_veggies_screen/repository/sell_repository.dart';

import '../../../widgets/constants.dart';

class SellVeggiesController extends GetxController {
  final _api = SellVeggiesRepository();
  RxList<dynamic> vegetables = <dynamic>[].obs;
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    getveggies();
  }

  void getveggies() {
    isLoading.value = true;
    _api.sellVeggies().then((value) {
      print("API response type: ${value.runtimeType}");
      print("API response content: $value");
      isLoading.value = false;
      vegetables.value = value;
      print(vegetables.value.length);
      print("hello");
      update();
    }).onError((error, stackTrace) {
      isLoading.value = false;
      print(error);
    });
  }
}
