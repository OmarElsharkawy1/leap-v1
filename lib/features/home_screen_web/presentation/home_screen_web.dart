import 'package:flutter/material.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/features/home_screen_web/presentation/widgets//job_carousel_web.dart';
import 'package:leap/features/home_screen_web/presentation/widgets//search_section.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/web_appbar.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);

    return Scaffold(
      backgroundColor: secondaryBackGroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const WebAppbar(),
            const SearchSection(),
            SizedBox(
              height: context.screenHeight * 0.14,
            ),
            const CarouselWithIndicatorWeb(),
            // SizedBox(
            //   height: context.screenHeight * 0.14,
            // ),
            // const FeaturedSkill(),
            // SizedBox(
            //   height: WidgetRatio.heightRatio(120),
            // ),
            // const TopEmployers(),
            // SizedBox(
            //   height: WidgetRatio.heightRatio(160),
            // ),
            // const JoinUsContainer(),
            // SizedBox(
            //   height: WidgetRatio.heightRatio(120),
            // ),
            // const TailingWidget(),
          ],
        ),
      ),
    );
  }
}
