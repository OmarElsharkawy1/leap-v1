import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/jobs_and_intern_card.dart';

class MyApplicationsItem extends StatefulWidget {
  const MyApplicationsItem({super.key});

  @override
  State<MyApplicationsItem> createState() => _MyApplicationsItemState();
}

class _MyApplicationsItemState extends State<MyApplicationsItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(AppSize.defaultSize! * .5),
            child: JobsAndInternCard(
              text: StringManager.viewDetails.tr(),
              vacancyModel: VacancyModel(
                  name: 'TeamLead Engineer',
                  provinceName: 'Cairo, Egypt',
                  major: '.NET Developer'),
            )
                .animate()
                .fadeIn() // uses `Animate.defaultDuration`
                .scale() // inherits duration from fadeIn
                .move(delay: 300.ms, duration: 600.ms),
          );
        });
  }
}
