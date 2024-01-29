import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/view/constants/colors.dart';

class TakeQuiz extends StatelessWidget {
  const TakeQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.symmetric(vertical:  AppSize.defaultSize!*1.6, horizontal:  AppSize.defaultSize!*.8),
      child: Container(
        decoration: BoxDecoration(
          color: backGroundColor,
          border: Border.all(
            color: borderColor,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        height:  AppSize.defaultSize!*12,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AssetPath.illustration),
                Column(
                children: [
                  Text(
                    StringManager.takeQuiz.tr(),
                    style: TextStyle(
                      color: primaryColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize:  AppSize.defaultSize!*2.1,
                    ),
                  ),
                  Text(
                    StringManager.youCanTakeQuiz.tr(),
                    style: TextStyle(
                      color: mainFontColor,
                      fontFamily: 'Poppins',
                      fontSize:  AppSize.defaultSize!*1.2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}