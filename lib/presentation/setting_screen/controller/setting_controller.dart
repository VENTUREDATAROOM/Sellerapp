import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/setting_screen/models/setting_model.dart';

/// A controller class for the SettingScreen.
///
/// This class manages the state of the SettingScreen, including the
/// current settingModelObj
class SettingController extends GetxController {
  Rx<SettingModel> settingModelObj = SettingModel().obs;
}
