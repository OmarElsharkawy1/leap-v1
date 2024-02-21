import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';

class JobCard extends StatefulWidget {
  const JobCard({
    Key? key, required this.jobSlider,
  }) : super(key: key);
  final  VacancyModel jobSlider;

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
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
              child:  Image.asset(AssetPath.slogan,
                height: AppSize.defaultSize! * 8,
                width: AppSize.defaultSize! * 8,
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
                  widget.jobSlider.name??"",
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.defaultSize! * 1.5),
                ),
              ),
              Text(
                widget.jobSlider.time,
                style: TextStyle(
                    color:AppColors.  mainFontColor, fontSize: AppSize.defaultSize! * 1.4),
              ),
              // SizedBox(height: AppSize.defaultSize!*.3,),
              Text(
                widget.jobSlider.province??"",
                style: TextStyle(
                    color:AppColors.  mainFontColor, fontSize: AppSize.defaultSize! * 1.4),
              ),
              SizedBox(height: AppSize.defaultSize!*.3,),
              Text(
                widget.jobSlider.skills??"",
                style: TextStyle(
                    color:AppColors.  mainFontColor, fontSize: AppSize.defaultSize! * 1.4),
              ),
              SizedBox(height: AppSize.defaultSize!*.3,),
              Text(
                '${widget.jobSlider.minSalary} EGP - ${widget.jobSlider.maxSalary} EGP',
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
