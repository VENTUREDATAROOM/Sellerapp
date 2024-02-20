import '../controller/sold_veggies_controller.dart';
import '../models/grid_item_model.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridItemWidget extends StatelessWidget {
  GridItemWidget(
    this.gridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GridItemModel gridItemModelObj;

  var controller = Get.find<SoldVeggiesController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 114.v,
            width: 128.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: gridItemModelObj.image!.value,
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
                      left: 1.h,
                      top: 4.v,
                    ),
                    child: Obx(
                      () => Text(
                        gridItemModelObj.title!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Obx(
              () => Text(
                gridItemModelObj.quantity!.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Obx(
              () => Text(
                gridItemModelObj.price!.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
