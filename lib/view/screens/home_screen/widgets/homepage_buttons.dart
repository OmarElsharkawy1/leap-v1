import 'package:flutter/material.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

class HomePageButtons extends StatelessWidget {
  const HomePageButtons({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: borderColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: primaryColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
      ).padding(const EdgeInsets.all(6)),
    );
  }
}
