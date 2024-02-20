import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/wrong_password_screen/models/wrong_password_model.dart';

/// A controller class for the WrongPasswordScreen.
///
/// This class manages the state of the WrongPasswordScreen, including the
/// current wrongPasswordModelObj
class WrongPasswordController extends GetxController {
  Rx<WrongPasswordModel> wrongPasswordModelObj = WrongPasswordModel().obs;
}
