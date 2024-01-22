import 'package:flutter/material.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/view/constants/assets.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';
import 'package:leap/view/screens/home_screen/widgets/bottom_navigation_bar.dart';
import 'package:leap/view/screens/home_screen/widgets/homepage_buttons.dart';
import 'package:leap/view/screens/home_screen/widgets/job_carousel.dart';
import 'package:leap/view/screens/home_screen/widgets/take_quiz_widget.dart';
import 'package:leap/view/screens/home_screen_web/widgets/search_section.dart';
import 'package:leap/view/screens/home_screen_web/widgets/web_appbar.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const HomeBottomNavigationBar(),
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
            const CarouselWithIndicatorDemo(),
            SizedBox(
              height: context.screenHeight * 0.14,
            ),
            const TakeQuiz(),
            const HomePageButtons(text: 'Jobs'),
            const HomePageButtons(text: 'Internships'),
          ],
        ),
      ),
    );
  }
}
