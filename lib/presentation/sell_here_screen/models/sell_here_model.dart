import '../../../core/app_export.dart';

class SellHereModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Good",
      value: "Good", 
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Better",
      value: "Better", 
    ),
     SelectionPopupModel(
      id: 1,
      title: "Best",
      value: "Best", 
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Not Good",
      value: "Not Good", 
    )
  ]);
}
