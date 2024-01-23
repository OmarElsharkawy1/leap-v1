import 'package:flutter/material.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/custom_text_field.dart';

class ColumnWithTextFieldWeb extends StatefulWidget {
  const ColumnWithTextFieldWeb(
      {super.key,
      required this.text,
      required this.controller,
      this.width,
      this.height});
  final String text;
  final double? width;
  final double? height;
  final TextEditingController controller;
  @override
  State<ColumnWithTextFieldWeb> createState() => _ColumnWithTextFieldWebState();
}

class _ColumnWithTextFieldWebState extends State<ColumnWithTextFieldWeb> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppSize.defaultSize! * 2,
        ),
        Text(
          widget.text,
          style: TextStyle(fontSize: AppSize.defaultSize! * 1.2),
        ),
        SizedBox(
          height: AppSize.defaultSize! * .3,
        ),
        SizedBox(
            width: widget.width ?? AppSize.screenWidth! * .9,
            height: widget.height ?? AppSize.defaultSize! * 4.5,
            child: CustomTextField(controller: widget.controller)),
      ],
    );
  }
}
