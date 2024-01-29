import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/features/home/home_screen/widgets/home_buttons.dart';
import 'package:leap/features/home/home_screen/widgets/job_carousel.dart';
import 'package:leap/features/home/home_screen/widgets/take_quiz_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(
        context,
        widget: Image.asset(
          AssetPath.logo,
          scale: 3,
        ),
      ),
      body: Column(
        children: [
          const CarouselWithIndicatorDemo(),
          const TakeQuiz(),
          HomePageButtons(
            text: StringManager.jobs.tr(),
            onPressed: () {},
          ),
          HomePageButtons(
              text: StringManager.internships.tr(), onPressed: () {}),
        ],
      ),
    );
  }
}
