import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/core/widgets/cutom_text.dart';
import 'package:leap/core/widgets/jobs_and_intern_card.dart';

class VacancyDetails extends StatefulWidget {
  const VacancyDetails({super.key, required this.vacancyModel});

  final VacancyModel vacancyModel;

  @override
  State<VacancyDetails> createState() => _VacancyDetailsState();
}

class _VacancyDetailsState extends State<VacancyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, text: StringManager.jobs.tr()),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          JobsAndInternCard(
            vacancyModel: widget.vacancyModel,
            width: AppSize.screenWidth!,
            apply: false,
          ),
          Padding(
            padding: EdgeInsets.all(AppSize.defaultSize! * 1.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppSize.defaultSize! * 3,
                ),
                CustomText(
                  text: StringManager.jobDescription.tr(),
                  fontWeight: FontWeight.w700,
                  fontSize: AppSize.defaultSize! * 1.5,
                ),
                SizedBox(
                  height: AppSize.defaultSize! * 3,
                ),
                CustomText(
                  text: widget.vacancyModel.description ?? "",
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
