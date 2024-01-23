import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/features/home/home_screen_web/widgets/skill_logo.dart';

class FeaturedSkill extends StatelessWidget {
  const FeaturedSkill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Featured Skill Categories',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Who are in extremely with eco friendly system',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.mainFontColor,
            fontFamily: 'Poppins',
          ),
        ),
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SkillLogo(pathText: AssetPath.js, logoName: 'JavaScript'),
              SkillLogo(pathText: AssetPath.json, logoName: 'JSON'),
              SkillLogo(pathText: AssetPath.dart, logoName: 'Dart'),
              SkillLogo(pathText: AssetPath.cplus, logoName: 'C++'),
              SkillLogo(pathText: AssetPath.react, logoName: 'ReactJS'),
              SkillLogo(pathText: AssetPath.html5, logoName: 'HTML5'),
            ],
          ),
        ),
      ],
    );
  }
}
