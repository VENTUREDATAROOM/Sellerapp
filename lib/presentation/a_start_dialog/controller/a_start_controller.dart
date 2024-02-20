import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/a_start_dialog/models/a_start_model.dart';

/// A controller class for the AStartDialog.
///
/// This class manages the state of the AStartDialog, including the
/// current aStartModelObj
class AStartController extends GetxController {
  Rx<AStartModel> aStartModelObj = AStartModel().obs;
}
