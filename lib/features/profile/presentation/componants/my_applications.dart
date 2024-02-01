import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/features/profile/presentation/componants/my_application_item.dart';

class MyApplications extends StatefulWidget {
  const MyApplications({super.key});

  @override
  State<MyApplications> createState() => _MyApplicationsState();
}

class _MyApplicationsState extends State<MyApplications>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBar(context, text: StringManager.myApplications.tr()),
        body: Column(
          children: [
            SizedBox(
              height: AppSize.defaultSize! * 2,
            ),
            Container(
              width: AppSize.screenWidth! * .65,
              height: AppSize.defaultSize! * 4.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.defaultSize! * 10),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(AppSize.defaultSize! * .5),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    color: AppColors.greyColor.withOpacity(.2),
                    borderRadius:
                        BorderRadius.circular(AppSize.defaultSize! * 10),
                  ),
                  dividerColor: Colors.transparent,
                  controller: _tabController,
                  tabs: [
                    Text(
                      StringManager.jobs.tr(),
                      style: TextStyle(
                          fontSize: AppSize.defaultSize! * 1.2,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      StringManager.internships.tr(),
                      style: TextStyle(
                          fontSize: AppSize.defaultSize! * 1.2,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(AppSize.defaultSize!),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    MyApplicationsItem(),
                    MyApplicationsItem(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
