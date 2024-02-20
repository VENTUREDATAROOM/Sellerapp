import '../../../core/app_export.dart';

/// This class is used in the [smscomponentlist_item_widget] screen.
class SmscomponentlistItemModel {
  SmscomponentlistItemModel({
    this.title,
    this.image,
    this.id,
  }) {
    title = title ?? Rx("SMS");
    image = image ?? Rx(ImageConstant.imgIconFeatherCheck);
    id = id ?? Rx("");
  }

  Rx<String>? title;

  Rx<String>? image;

  Rx<String>? id;
}
