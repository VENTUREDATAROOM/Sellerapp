import 'package:flutter/material.dart';
import 'package:fresh_mandi/core/app_export.dart';

class CustomCheckbox extends StatefulWidget {
  final bool isChecked;
  final Color inactiveColor;
  final Color activeColor;
  final Function(bool) onTap;

  const CustomCheckbox({
    Key? key,
    required this.isChecked,
    required this.inactiveColor,
    required this.activeColor,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onTap(!widget.isChecked),
      child: Container(
        height: 13.adaptSize,
        width: 13.adaptSize,
        decoration: BoxDecoration(
          color: widget.isChecked ? widget.activeColor : widget.inactiveColor,
          borderRadius: BorderRadius.circular(2.h),
        ),
        child: widget.isChecked
            ? const Icon(
                Icons.check,
                size: 8,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
