import 'package:flutter/material.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/features/home/home_screen_web/widgets/featured_skill.dart';
import 'package:leap/features/home/home_screen_web/widgets/job_carousel_web.dart';
import 'package:leap/features/home/home_screen_web/widgets/join_us_container.dart';
import 'package:leap/features/home/home_screen_web/widgets/search_section.dart';
import 'package:leap/features/home/home_screen_web/widgets/tailing_widget.dart';
import 'package:leap/features/home/home_screen_web/widgets/top_employers.dart';
import 'package:leap/features/home/home_screen_web/widgets/web_appbar.dart';
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
            SizedBox(
              height: context.screenHeight * 0.14,
            ),
            const FeaturedSkill(),
            SizedBox(
              height: WidgetRatio.heightRatio(120),
            ),
            const TopEmployers(),
            SizedBox(
              height: WidgetRatio.heightRatio(160),
            ),
            const JoinUsContainer(),
            SizedBox(
              height: WidgetRatio.heightRatio(120),
            ),
            const TailingWidget(),
          ],
        ),
      ),
    );
  }
}
