import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon, this.suffixIcon,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.defaultSize! * 6,
      width: AppSize.screenWidth! - (AppSize.defaultSize! * 4),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: widget.labelText,
            suffixIcon: widget.suffixIcon,
            labelStyle: const TextStyle(
                color: AppColors.primaryColor,
            ),
            prefixIcon: widget.prefixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.primaryColor.withOpacity(.4)
              ),

            ),
          focusedBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.backGroundColor.withOpacity(.4)
              )
          ),
        ),

        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
      ),
    );
  }
}
