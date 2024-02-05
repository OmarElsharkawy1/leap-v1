import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.screenHeight! * .2,
      width: AppSize.screenWidth,
      color: AppColors.containerColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(AppSize.defaultSize! * 2),
            child: SizedBox(
              height: AppSize.defaultSize! * 6,
              width: AppSize.defaultSize! * 6,
              child: Image.asset(
                AssetPath.logo,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppSize.defaultSize!,
                ),
                child: Text(
                  'job.title',
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.defaultSize! * 1.5),
                ),
              ),
              Text(
                'job.location',
                style: TextStyle(
                    color:AppColors.  mainFontColor, fontSize: AppSize.defaultSize! * 1.4),
              ),
              Text(
                'job.skill',
                style: TextStyle(
                    color:AppColors.  mainFontColor, fontSize: AppSize.defaultSize! * 1.4),
              ),
              Text(
                'job.salary',
                style: TextStyle(
                    color:AppColors.  mainFontColor, fontSize: AppSize.defaultSize! * 1.4),
              ),
              SizedBox(
                height: AppSize.screenHeight! * .02,
              ),
              Padding(
                padding: EdgeInsets.all(AppSize.defaultSize! * .6),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                      height: AppSize.screenHeight! * .05,
                      width: AppSize.screenWidth! * .4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(AppSize.defaultSize! * .5),
                          border: Border.all(color: AppColors.primaryColor)),
                      child: Center(
                        child: Text(
                          StringManager.viewJob.tr(),
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: AppSize.defaultSize! * 1.4,
                          ),
                        ),
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}