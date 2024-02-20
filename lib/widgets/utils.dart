import 'package:flutter/material.dart';
// import 'package:fresh_mandi/core/app_export.dart';
import 'package:fresh_mandi/widgets/custom_colors.dart';
import 'package:fresh_mandi/widgets/cap_text.dart';
import 'package:one_context/one_context.dart';

import '../theme/theme_helper.dart';

// class Utils {
//   static void fieldFocusChange(
//       BuildContext context, FocusNode current, FocusNode nextFocus) {
//     current.unfocus();
//     FocusScope.of(context).requestFocus(nextFocus);
//   }

//   static toastMessage(String message) {
//     Fluttertoast.showToast(
//         msg: message,
//         backgroundColor: theme.primaryColor,
//         gravity: ToastGravity.BOTTOM);
//   }

//   static snackBar(String title, String message) {
//     Get.snackbar(
//       title,
//       message,
//       snackPosition: SnackPosition.TOP,
//       backgroundColor:
//           Get.currentRoute == AppRoutes.loginScreen ? Colors.red : Colors.white,
//     );
//   }
// }

class ShowSnackBar {
  customBar(String data, BuildContext context,
      {bool isSuccessPopup = false, bool capitalise = true}) {
    FocusManager.instance.primaryFocus!.unfocus();
    context = OneContext.instance.context!;
    return SnackBar(
        backgroundColor: isSuccessPopup
            ? CustomColors.colorSuccess
            : CustomColors.colorFailure,
        action: SnackBarAction(
            label: isSuccessPopup ? "" : "X",
            onPressed: () {},
            textColor: CustomColors.basicColor1),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 5),
        margin: EdgeInsets.only(bottom: 30, left: 20, right: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        content: Row(
          children: [
            Row(
              children: [
                isSuccessPopup
                    ? SizedBox()
                    : Icon(Icons.info,
                        color: CustomColors.primaryColor, size: 25),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                    width: 180,
                    child: Text(capitalise ? '${data.capitalize()}' : '$data',
                        style: theme.textTheme.titleMedium!.copyWith(
                            color: CustomColors.basicColor1, fontSize: 12))),
              ],
            ),
          ],
        ));
  }
}
