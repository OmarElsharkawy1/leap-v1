import 'package:flutter/material.dart';
import 'package:leap/view/constants/assets.dart';
import 'package:leap/view/screens/home_screen_web/widgets/home_card.dart';

class CardRow extends StatelessWidget {
  const CardRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeCard(
              icon: skillIcon,
              boldText: 'Skill',
              line1Text: 'the ability to carry out',
              line2Text: 'diverse duties in IT roles',
            ),
            HomeCard(
              icon: employer,
              boldText: 'Employer',
              line1Text: 'seek candidates who write',
              line2Text: 'code in several languages',
            ),
            HomeCard(
              icon: location1,
              boldText: 'Province',
              line1Text: 'where an Employee reports',
              line2Text: 'for work at Company',
            ),
            HomeCard(
              icon: title,
              boldText: 'Title',
              line1Text: 'the type of position and',
              line2Text: 'level an employee',
            ),
          ],
        ),
      ),
    );
  }
}
