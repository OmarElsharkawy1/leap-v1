import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/features/home/home_screen/controller/cubit.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({Key? key, required this.cubit})
      : super(key: key);
  final HomeScreenCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: cubit.currentIndex,
      onTap: (i) {
        cubit.changeIndex(i); // setState(() {});
      },
      type: BottomNavigationBarType.fixed,
      selectedIconTheme:
          IconThemeData(color: AppColors.primaryColor, size: AppSize.defaultSize! * 2),
      selectedLabelStyle: TextStyle(
        color: AppColors.primaryColor,
        fontSize: AppSize.defaultSize!,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: AppSize.defaultSize! * .8,
      ),
      backgroundColor:AppColors. secondaryBackGroundColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: AppSize.screenHeight! * .02,
          ),
          label: StringManager.home.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.school_outlined,
          ),
          label: StringManager.internships.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.shopping_bag,
          ),
          label: StringManager.jobs.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.collections_bookmark_outlined,
          ),
          label: StringManager.resources.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.sticky_note_2_outlined,
          ),
          label: StringManager.blog.tr(),
        ),
      ],
    );
  }
}
