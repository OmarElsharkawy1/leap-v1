import 'package:flutter/material.dart';
import 'package:leap/view/constants/assets.dart';
import 'package:leap/view/constants/colors.dart';
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
    return const Scaffold(
      bottomNavigationBar: HomeBottomNavigationBar(),
      backgroundColor: secondaryBackGroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WebAppbar(),
            SearchSection(),
            CarouselWithIndicatorDemo(),
            TakeQuiz(),
            HomePageButtons(text: 'Jobs'),
            HomePageButtons(text: 'Internships'),
          ],
        ),
      ),
    );
  }
}
