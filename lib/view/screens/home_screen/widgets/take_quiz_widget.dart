import 'package:flutter/material.dart';
import 'package:leap/view/constants/assets.dart';
import 'package:leap/view/constants/colors.dart';

class TakeQuiz extends StatelessWidget {
  const TakeQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backGroundColor,
        border: Border.all(
          color: borderColor,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 120,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(illustration),
            const Column(
              children: [
                Text(
                  'Take a Quiz',
                  style: TextStyle(
                    color: primaryColor,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
                Text(
                  'you can take a quiz to specify',
                  style: TextStyle(
                    color: mainFontColor,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  ' which career is suitable for you.',
                  style: TextStyle(
                    color: mainFontColor,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
