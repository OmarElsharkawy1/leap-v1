import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';

class SkillLogo extends StatelessWidget {
  const SkillLogo({Key? key, required this.pathText, required this.logoName})
      : super(key: key);
  final String pathText;
  final String logoName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        Image.asset(
          pathText,
          width: 129,
          height: 129,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          logoName,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.primaryColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
