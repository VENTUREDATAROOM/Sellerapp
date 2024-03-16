import 'package:fresh_mandi/presentation/sell_here_screen/sell_here_screen.dart';

import '../sell_veggies_screen/widgets/sellveggies_item_widget.dart';
import 'controller/sell_veggies_controller.dart';
// import 'models/sellveggies_item_model.dart';
import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_leading_image.dart';
import 'package:fresh_mandi/widgets/app_bar/appbar_subtitle.dart';
import 'package:fresh_mandi/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SellVeggiesScreen extends GetWidget<SellVeggiesController> {
  const SellVeggiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Obx(() => _buildVeggiesGrid()),
      ),
    );
  }

  /// Builds the app bar widget.
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 56.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_sell_vegies".tr));
  }

  /// Navigates to the previous screen.
  void onTapArrowLeft() {
    Get.back();
  }

  /// Builds the grid of vegetables.
  Widget _buildVeggiesGrid() {
    return Padding(
      padding: EdgeInsets.only(left: 10.v, right: 10.v),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: controller.vegetables.length,
        itemBuilder: (context, index) {
          var veggie = controller.vegetables[index];
          return GestureDetector(
              onTap: () {
                print("the veggie selected is: $veggie");
                Get.toNamed(AppRoutes.sellHereScreen, arguments: {
                  "id": veggie['id'],
                  "productName": veggie['productName'],
                  "productSubName": veggie['productSubName'],
                  "productMasterCode": veggie['productMasterCode'],
                  "productMasterSubCode": veggie['productMasterSubCode'],
                  "productImage": veggie['productImage'],
                  "productFinalCode": veggie['productFinalCode']
                });
              },
              child: SellVeggiesItemWidget(veggie: veggie));
        },
      ),
    );
  }
}
