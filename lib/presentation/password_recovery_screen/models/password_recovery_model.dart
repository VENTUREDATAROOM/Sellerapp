import '../../../core/app_export.dart';
import 'smscomponentlist_item_model.dart';

/// This class defines the variables used in the [password_recovery_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PasswordRecoveryModel {
  Rx<List<SmscomponentlistItemModel>> smscomponentlistItemList = Rx([
    SmscomponentlistItemModel(
        title: "SMS".obs, image: ImageConstant.imgIconFeatherCheck.obs),
    SmscomponentlistItemModel(title: "Email".obs)
  ]);
}
