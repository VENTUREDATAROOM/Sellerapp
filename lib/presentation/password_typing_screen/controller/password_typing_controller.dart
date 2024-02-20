import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/password_typing_screen/models/password_typing_model.dart';

/// A controller class for the PasswordTypingScreen.
///
/// This class manages the state of the PasswordTypingScreen, including the
/// current passwordTypingModelObj
class PasswordTypingController extends GetxController {
  Rx<PasswordTypingModel> passwordTypingModelObj = PasswordTypingModel().obs;
}
