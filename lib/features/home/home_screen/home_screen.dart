import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/features/home/home_screen/widgets/home_buttons.dart';
import 'package:leap/features/home/home_screen/widgets/job_carousel.dart';
import 'package:leap/features/home/home_screen/widgets/take_quiz_container.dart';
import 'package:leap/features/main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.onPressedIntern, this.onPressedJob});

  final void Function()? onPressedJob;
  final void Function()? onPressedIntern;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          const CarouselWithIndicatorDemo(),
          // const TakeQuiz(),
          HomePageButtons(
            text: StringManager.jobs.tr(),
            onPressed: widget.onPressedJob,
          ),
          HomePageButtons(
              text: StringManager.internships.tr(),
              onPressed: widget.onPressedIntern),
        ],
      ),
    );
  }
}
