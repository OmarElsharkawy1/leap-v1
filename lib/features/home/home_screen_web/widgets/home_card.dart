import 'package:flutter/material.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

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
      width: AppSize.defaultSizeWeb! * 3.1,
      height: AppSize.defaultSizeWeb! * 2.2,
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
                width: AppSize.defaultSizeWeb! / 2.4,
                height: AppSize.defaultSizeWeb! / 2.2,
              ),
              Text(
                boldText,
                style: TextStyle(
                  fontSize: AppSize.defaultSizeWeb! / 3,
                  color: mainFontColor,
                  fontFamily: 'Poppins',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: AppSize.defaultSizeWeb! * 2.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          line1Text,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: AppSize.defaultSizeWeb! / 5,
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
