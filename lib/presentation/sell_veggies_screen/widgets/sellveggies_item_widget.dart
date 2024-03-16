import 'package:flutter/material.dart';
import 'package:fresh_mandi/widgets/base64.dart';

import '../../../core/app_export.dart';

class SellVeggiesItemWidget extends StatelessWidget {
  final dynamic veggie; // Using dynamic as we don't have a specific model type

  const SellVeggiesItemWidget({Key? key, required this.veggie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114.v,
      width: 128.h,
      decoration: BoxDecoration(
          color: theme.primaryColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Base64Image(
              base64String: veggie['productImage'],
              imageHeight: 150,
              imageWidth: 150,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h, top: 4.v, bottom: 5.v),
              child: Text(
                veggie['productName'],
                style: CustomTextStyles.bodyLargeAkayaKanadaka,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


 // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Padding(
          //     padding: EdgeInsets.only(
          //       left: 8.h,
          //       top: 4.v,
          //     ),
          //     child: Text(
          //       veggie['productMasterCode'],
          //       style: CustomTextStyles.bodyLargeAkayaKanadaka,
          //     ),
          //   ),
          // ),