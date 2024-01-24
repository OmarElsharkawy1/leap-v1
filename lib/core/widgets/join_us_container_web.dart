import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/utils/app_size.dart';

class JoinUsContainer extends StatelessWidget {
  const JoinUsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryBackGroundColor,
      width: WidgetRatio.widthRatio(952),
      height: WidgetRatio.heightRatio(287),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.containerColor,
              ),
              width: WidgetRatio.widthRatio(952),
              height: WidgetRatio.heightRatio(267),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: WidgetRatio.widthRatio(40),
                  vertical: WidgetRatio.heightRatio(32),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Join us today without any hesitation',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: WidgetRatio.widthRatio(30),
                      ),
                    ),
                    Text(
                      'Empower your journey and unlock opportunities.',
                      style: TextStyle(
                        color: AppColors.mainFontColor,
                        fontFamily: 'Poppins',
                        fontSize: WidgetRatio.widthRatio(14),
                      ),
                    ),
                    Text(
                      'Register now for a transformative experience awaits you!',
                      style: TextStyle(
                        color: AppColors.mainFontColor,
                        fontFamily: 'Poppins',
                        fontSize: WidgetRatio.widthRatio(14),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: WidgetRatio.heightRatio(20)),
                          child: ElevatedButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, Routes.signUp),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              fixedSize: Size(
                                WidgetRatio.widthRatio(232),
                                WidgetRatio.heightRatio(48),
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                            ),
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                color: AppColors.backGroundColor,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: WidgetRatio.widthRatio(14),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              fixedSize: Size(
                                WidgetRatio.widthRatio(232),
                                WidgetRatio.heightRatio(48),
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                            ),
                            child: Text(
                              'For Employers',
                              style: TextStyle(
                                color: AppColors.backGroundColor,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: WidgetRatio.widthRatio(14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 60,
            bottom: 0,
            child: Image.asset(
              AssetPath.human,
              width: WidgetRatio.widthRatio(173),
              height: WidgetRatio.heightRatio(287),
            ),
          ),
        ],
      ),
    );
  }
}
