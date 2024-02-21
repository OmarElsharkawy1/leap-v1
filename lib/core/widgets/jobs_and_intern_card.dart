import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/cached_network_image.dart';
import 'package:leap/core/widgets/cutom_text.dart';

class JobsAndInternCard extends StatefulWidget {
  const JobsAndInternCard({super.key, required this.vacancyModel, this.text, this.width,  this.apply=true});

  final VacancyModel vacancyModel;
  final String? text;
  final double? width;
  final bool apply;

  @override
  State<JobsAndInternCard> createState() => _JobsAndInternCardState();
}

class _JobsAndInternCardState extends State<JobsAndInternCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: AppSize.screenHeight!*.27,
      width:widget.width?? AppSize.screenWidth! * .95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.defaultSize!),
        color: AppColors.containerColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(AppSize.defaultSize! * 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkCustom(
              url: widget.vacancyModel.image!,
              height: AppSize.defaultSize! * 8,
              width: AppSize.defaultSize! * 8,
            ),
            SizedBox(
              width: AppSize.defaultSize!,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: AppSize.screenWidth! * .5,
                  child: CustomText(
                      text: widget.vacancyModel.name!,
                      color: AppColors.primaryColor,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      fontSize: AppSize.defaultSize! * 1.8,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Text(
                      widget.vacancyModel.time,
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w600,
                          fontSize: AppSize.defaultSize! * 1.2),
                    ),
                    Text(
                      widget.vacancyModel.category,
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: AppSize.defaultSize! * 1.2),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSize.defaultSize!,
                ),
                rowWithIcon(
                    text: widget.vacancyModel.slug!, icon: AssetPath.location),
                SizedBox(
                  height: AppSize.defaultSize!,
                ),
                rowWithIcon(
                    text: widget.vacancyModel.slug!, icon: AssetPath.location),
                SizedBox(
                  height: AppSize.defaultSize!,
                ),
                Text(
                  '${widget.vacancyModel.minSalary} - ${widget.vacancyModel.maxSalary}',
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: AppSize.defaultSize! * 1.2),
                ),
                SizedBox(
                  height: AppSize.defaultSize! * 2,
                ),
                if(widget.apply)
                InkWell(
                  onTap: () {},
                  child: Container(
                      height: AppSize.defaultSize! * 3.5,
                      width: AppSize.screenWidth! * .55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(AppSize.defaultSize! * .5),
                          border: Border.all(color: AppColors.primaryColor)),
                      child: Center(
                        child: Text(
                          widget.text ?? StringManager.applyNow.tr(),
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: AppSize.defaultSize! * 1.4,
                          ),
                        ),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget rowWithIcon({required String text, required String icon}) {
    return Row(
      children: [
        Image.asset(icon),
        SizedBox(
          width: AppSize.defaultSize!,
        ),
        Text(
          text,
          style: TextStyle(
              color: AppColors.greyColor,
              fontWeight: FontWeight.w600,
              fontSize: AppSize.defaultSize! * 1.2),
        ),
      ],
    );
  }
}
