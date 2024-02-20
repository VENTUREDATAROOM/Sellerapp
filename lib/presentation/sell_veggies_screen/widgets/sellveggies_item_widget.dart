import '../controller/sell_veggies_controller.dart';
import '../models/sellveggies_item_model.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SellveggiesItemWidget extends StatelessWidget {
  SellveggiesItemWidget(
    this.sellveggiesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SellveggiesItemModel sellveggiesItemModelObj;

  var controller = Get.find<SellVeggiesController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 114.v,
      width: 128.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: sellveggiesItemModelObj.image!.value,
              height: 114.v,
              width: 128.h,
              radius: BorderRadius.circular(
                24.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 4.v,
              ),
              child: Obx(
                () => Text(
                  sellveggiesItemModelObj.text!.value,
                  style: CustomTextStyles.bodyLargeAkayaKanadaka,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
