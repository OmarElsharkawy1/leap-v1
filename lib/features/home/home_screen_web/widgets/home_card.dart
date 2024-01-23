import 'package:flutter/material.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/view/constants/colors.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.icon,
    required this.boldText,
    required this.line1Text,
  }) : super(key: key);

  final String icon;
  final String boldText;
  final String line1Text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: WidgetRatio.widthRatio(226),
      height: WidgetRatio.heightRatio(200),
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
                width: WidgetRatio.widthRatio(30),
                height: WidgetRatio.heightRatio(32),
              ),
              Text(
                boldText,
                style: TextStyle(
                  fontSize: WidgetRatio.widthRatio(20),
                  color: mainFontColor,
                  fontFamily: 'Poppins',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: WidgetRatio.widthRatio(200),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          line1Text,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: WidgetRatio.widthRatio(14),
                            overflow: TextOverflow.clip,
                            color: mainFontColor,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
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
