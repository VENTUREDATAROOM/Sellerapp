import 'package:fresh_mandi/core/app_export.dart';

/// This class defines the variables used in the [bank_kyc_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BankKycModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Savings Account",
      value: "savings", // This value will be used as the account type
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Current Account",
      value: "current", // This value will be used as the account type
    )
  ]);
}
