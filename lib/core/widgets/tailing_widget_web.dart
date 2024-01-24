import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/custom_text_button.dart';

class TailingWidget extends StatelessWidget {
  const TailingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.screenWidth,
      height: WidgetRatio.heightRatio(279),
      color: AppColors.tailingWidgetColor,
      child: Padding(
        padding: EdgeInsets.only(
          right: WidgetRatio.widthRatio(100),
          left: WidgetRatio.widthRatio(100),
          top: WidgetRatio.heightRatio(29),
          bottom: WidgetRatio.heightRatio(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AssetPath.logo,
              height: WidgetRatio.heightRatio(40),
              width: WidgetRatio.widthRatio(64),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: WidgetRatio.widthRatio(270),
                  child: Text(
                    '''Explore a world of possibilities with our internships, jobs website. Connect with dynamic opportunities, gain hands-on-experience, and propel your career forward.''',
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontFamily: 'Poppins',
                      fontSize: WidgetRatio.widthRatio(14),
                    ),
                  ),
                ),
                SizedBox(width: WidgetRatio.widthRatio(136)),
                SizedBox(
                  height: WidgetRatio.heightRatio(140),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Important Links',
                        style: TextStyle(
                          color: AppColors.mainFontColor,
                          fontFamily: 'Poppins',
                          fontSize: WidgetRatio.widthRatio(16),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomTextButton(
                        text: 'About US',
                        textColor: AppColors.primaryColor,
                        textSize: WidgetRatio.widthRatio(16),
                        textFamily: 'Poppins',
                      ),
                      CustomTextButton(
                        text: 'Contact US',
                        textColor: AppColors.primaryColor,
                        textSize: WidgetRatio.widthRatio(16),
                        textFamily: 'Poppins',
                      ),
                      CustomTextButton(
                        text: 'Blog',
                        textColor: AppColors.primaryColor,
                        textSize: WidgetRatio.widthRatio(16),
                        textFamily: 'Poppins',
                      ),
                    ],
                  ),
                ),
                SizedBox(width: WidgetRatio.widthRatio(136)),
                SizedBox(
                  height: WidgetRatio.heightRatio(140),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Download Leap Application Now',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontFamily: 'Poppins',
                          fontSize: WidgetRatio.widthRatio(16),
                        ),
                      ),
                      SizedBox(
                        height: WidgetRatio.heightRatio(8),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            AssetPath.googlePlay,
                            // width: WidgetRatio.widthRatio(144),
                            height: WidgetRatio.heightRatio(40),
                          ),
                          const SizedBox(width: 8),
                          Image.asset(
                            AssetPath.appStore,
                            // width: WidgetRatio.widthRatio(144),
                            height: WidgetRatio.heightRatio(40),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: AppColors.breakLineColor,
            ),
            Center(
              child: Text(
                '@ Leap 2024',
                style: TextStyle(
                  color: AppColors.tailingFontColor,
                  fontFamily: 'Poppins',
                  fontSize: WidgetRatio.widthRatio(14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
