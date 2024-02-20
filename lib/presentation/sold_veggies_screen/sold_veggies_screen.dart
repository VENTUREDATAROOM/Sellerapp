import '../sold_veggies_screen/widgets/grid_item_widget.dart';
import 'controller/sold_veggies_controller.dart';
import 'models/grid_item_model.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_subtitle.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SoldVeggiesScreen extends GetWidget<SoldVeggiesController> {
  const SoldVeggiesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          height: 720.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 17.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 38.h,
                    bottom: 16.v,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.v),
                        child: Text(
                          "lbl_price_91_200".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 72.h,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "lbl_price_16_800".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildGrid(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_sold_vegies".tr,
      ),
      actions: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          color: theme.colorScheme.onErrorContainer,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.h,
            ),
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.outline.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBell02,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      right: 2.h,
                      bottom: 16.v,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGrid() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          top: 17.v,
          right: 1.h,
        ),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 150.v,
              crossAxisCount: 2,
              mainAxisSpacing: 42.h,
              crossAxisSpacing: 42.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount:
                controller.soldVeggiesModelObj.value.gridItemList.value.length,
            itemBuilder: (context, index) {
              GridItemModel model = controller
                  .soldVeggiesModelObj.value.gridItemList.value[index];
              return GridItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
