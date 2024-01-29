import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/models/job.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

class JobCard extends StatelessWidget {
  const JobCard({Key? key, required this.job}) : super(key: key);
  final Job job;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * .2,
      width: context.screenWidth,
      color: containerColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(AppSize.defaultSize! * 2),
            child: SizedBox(
              height: AppSize.defaultSize! * 6,
              width: AppSize.defaultSize! * 6,
              child: Image.asset(
                job.logo,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                job.title,
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: AppSize.defaultSize! * 1.5),
              ).padding(
                EdgeInsets.symmetric(
                  vertical: AppSize.defaultSize!,
                ),
              ),
              Text(
                job.location,
                style: TextStyle(
                    color: mainFontColor, fontSize: AppSize.defaultSize! * 1.4),
              ),
              Text(
                job.skill,
                style: TextStyle(
                    color: mainFontColor, fontSize: AppSize.defaultSize! * 1.4),
              ),
              Text(
                job.salary,
                style: TextStyle(
                    color: mainFontColor, fontSize: AppSize.defaultSize! * 1.4),
              ),
              SizedBox(
                height: AppSize.screenHeight! * .02,
              ),
              InkWell(
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
              ).padding(EdgeInsets.all(AppSize.defaultSize! * .6))
            ],
          ),
        ],
      ),
    );
  }
}
