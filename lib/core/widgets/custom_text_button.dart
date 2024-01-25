import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/routes.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    this.onTap,
    this.textColor,
    this.textSize,
    required this.text,
    this.textWeight,
    this.textFamily,
  }) : super(key: key);

  final void Function()? onTap;
  final String text;
  final Color? textColor;
  final double? textSize;
  final FontWeight? textWeight;
  final String? textFamily;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.signUp);
      },
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: textSize,
          fontWeight: textWeight,
          fontFamily: textFamily,
        ),
      ),
    );
  }
}