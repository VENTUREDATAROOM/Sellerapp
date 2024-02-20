import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/presentation/aadhar_upload_kyc_screen/models/aadhar_upload_kyc_model.dart';

/// A controller class for the AadharUploadKycScreen.
///
/// This class manages the state of the AadharUploadKycScreen, including the
/// current aadharUploadKycModelObj
class AadharUploadKycController extends GetxController {
  Rx<AadharUploadKycModel> aadharUploadKycModelObj = AadharUploadKycModel().obs;
}
