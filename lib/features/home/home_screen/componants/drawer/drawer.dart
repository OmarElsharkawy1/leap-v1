import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/main_button.dart';
import 'package:leap/features/home/home_screen/componants/drawer/widgets/drawer-buttons.dart';
import 'package:leap/features/home/home_screen/componants/drawer/widgets/user_row.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryBackGroundColor,
      width: AppSize.screenWidth! * .8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppSize.defaultSize! * 3,
          ),
          const UserRowDrawer(),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.defaultSize!),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomDrawerButton(
                  text: StringManager.home.tr(),
                  onPressed: () {},
                ),
                CustomDrawerButton(
                  text: StringManager.jobs.tr(),
                  onPressed: () {},
                ),
                CustomDrawerButton(
                  text: StringManager.companies.tr(),
                  onPressed: () {},
                ),
                CustomDrawerButton(
                  text: StringManager.blog.tr(),
                  onPressed: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomDrawerButton(
                      text: StringManager.options.tr(),
                      onPressed: () {},
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: AppSize.defaultSize! * 3),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: AppSize.defaultSize! * 3,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSize.screenHeight! * .45,
                ),
                InkWell(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      height: AppSize.defaultSize! * 4,
                      width: AppSize.screenWidth! * .6,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(AppSize.defaultSize! * .5),
                          border: Border.all(color: AppColors.primaryColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.logout,
                            color: AppColors.primaryColor,
                            size: AppSize.defaultSize! * 1.5,
                          ),
                          SizedBox(
                            width: AppSize.defaultSize!,
                          ),
                          Text(
                            StringManager.logOut.tr(),
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: AppSize.defaultSize! * 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
