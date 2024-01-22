import 'package:flutter/material.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.icon,
    required this.boldText,
    required this.line1Text,
    required this.line2Text,
  }) : super(key: key);

  final String icon;
  final String boldText;
  final String line1Text;
  final String line2Text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth * 0.15,
      height: context.screenHeight * 0.18,
      child: Card(
        elevation: 0,
        color: backGroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                icon,
                width: 30,
                height: 32,
              ),
              Text(
                boldText,
                style: const TextStyle(
                  fontSize: 20,
                  color: mainFontColor,
                  fontFamily: 'Poppins',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        line1Text,
                        style: const TextStyle(
                          fontSize: 14,
                          color: mainFontColor,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        line2Text,
                        style: const TextStyle(
                          fontSize: 14,
                          color: mainFontColor,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
