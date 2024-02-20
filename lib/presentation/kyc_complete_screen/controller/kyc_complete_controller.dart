import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/kyc_complete_screen/models/kyc_complete_model.dart';

/// A controller class for the KycCompleteScreen.
///
/// This class manages the state of the KycCompleteScreen, including the
/// current kycCompleteModelObj
class KycCompleteController extends GetxController {
  Rx<KycCompleteModel> kycCompleteModelObj = KycCompleteModel().obs;
}
