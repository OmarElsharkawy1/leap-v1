import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:developer';

const List<String> _list = [
  'Developer',
  'Designer',
  'Consultant',
  'Student',
];

class SimpleDropdown extends StatelessWidget {
  const SimpleDropdown({
    required this.list,
    Key? key,
    this.width,
    this.height,
    this.itemListPadding,
    this.backgroundColor,
    this.fontSize,
    this.fontColor,
    this.fontWeight,
    this.containerPadding,
  }) : super(key: key);

  final List<String> list;
  final double? width;
  final double? height;
  final EdgeInsets? itemListPadding;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final EdgeInsetsGeometry? containerPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: containerPadding ?? EdgeInsets.symmetric(horizontal: 4.w),
      child: SizedBox(
        width: width,
        height: height,
        child: CustomDropdown<String>(
          // listItemPadding: EdgeInsets.symmetric(horizontal: 1),
          itemsListPadding: itemListPadding,
          closedHeaderPadding:
              EdgeInsets.symmetric(vertical: 0.h, horizontal: 0.w),
          decoration: CustomDropdownDecoration(
            listItemStyle: TextStyle(
              fontSize: fontSize,
              color: fontColor,
              fontFamily: 'Poppins',
              fontWeight: fontWeight,
            ),
            headerStyle: TextStyle(
              fontSize: fontSize,
              color: fontColor,
              fontFamily: 'Poppins',
              fontWeight: fontWeight,
            ),
            // hintStyle: TextStyle(fontSize: 14, color: Colors.orange),
            closedFillColor: backgroundColor,
            expandedFillColor: backgroundColor,
          ),
          // hintText: 'Select job role',
          items: list,
          initialItem: list[0],
          onChanged: (value) {
            log('changing value to: $value');
          },
        ),
      ),
    );
  }
}
