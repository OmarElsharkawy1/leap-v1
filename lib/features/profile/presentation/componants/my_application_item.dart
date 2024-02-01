import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
        itemCount: 15,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(AppSize.defaultSize! * .5),
            child:   JobsAndInternCard(text:  StringManager.viewDetails.tr(),),
          );
        });
  }
}
