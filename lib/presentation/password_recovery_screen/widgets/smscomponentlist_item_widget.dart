import 'package:flutter/material.dart';
import 'package:fresh_mandi/core/app_export.dart'; // Assuming this contains necessary custom styles and decorations

class SmscomponentlistItemWidget extends StatefulWidget {
  final VoidCallback onSmsTap;
  final VoidCallback onEmailTap;
  SmscomponentlistItemWidget(
      {Key? key, required this.onSmsTap, required this.onEmailTap})
      : super(key: key);

  @override
  _SmscomponentlistItemWidgetState createState() =>
      _SmscomponentlistItemWidgetState();
}

class _SmscomponentlistItemWidgetState
    extends State<SmscomponentlistItemWidget> {
  bool isSmsTapped = false;
  bool isAnyTapped = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isSmsTapped = true;
              isAnyTapped = true;
            });
            widget.onSmsTap();
            print("SMS tapped");
          },
          child: Container(
            width: 110,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillIndigo.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 1.v),
                  child: Text(
                    "SMS",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallRalewayPrimaryBold,
                  ),
                ),
                if (isAnyTapped && isSmsTapped) ...[
                  _buildCheckedIcon(),
                ] else ...[
                  _buildUncheckedIcon(),
                ],
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isSmsTapped = false;
              isAnyTapped = true;
            });
            widget.onEmailTap();
            print("Email tapped");
          },
          child: Container(
            width: 110,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 1.v, left: 00),
                  child: Text(
                    "Email",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleSmall!.copyWith(
                      fontFamily: 'Raleway',
                      color: Colors.black,
                      fontSize: 15.fSize,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                if (isAnyTapped && !isSmsTapped) ...[
                  _buildCheckedIcon(),
                ] else ...[
                  _buildUncheckedIcon(),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCheckedIcon() {
    return Container(
      height: 22.adaptSize,
      width: 22.adaptSize,
      margin: EdgeInsets.only(left: 39.h),
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgIconFeatherCheck,
        color: Colors.white,
        height: 10.v,
        width: 10.h,
        alignment: Alignment.centerRight,
      ),
    );
  }

  Widget _buildUncheckedIcon() {
    return Container(
      height: 22.adaptSize,
      width: 22.adaptSize,
      margin: EdgeInsets.only(left: 39.h),
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
        color: Colors.white,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgIconFeatherCheck,
        color: Colors.white,
        height: 10.v,
        width: 10.h,
        alignment: Alignment.centerRight,
      ),
    );
  }
}
