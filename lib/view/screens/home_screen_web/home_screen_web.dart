import 'package:flutter/material.dart';
import 'package:leap/view/constants/assets.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/screens/home_screen/widgets/bottom_navigation_bar.dart';
import 'package:leap/view/screens/home_screen/widgets/homepage_buttons.dart';
import 'package:leap/view/screens/home_screen/widgets/job_carousel.dart';
import 'package:leap/view/screens/home_screen/widgets/take_quiz_widget.dart';
import 'package:leap/view/screens/home_screen_web/web_appbar.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: HomeBottomNavigationBar(),
      backgroundColor: secondaryBackGroundColor,
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: const Icon(
      //       Icons.menu,
      //       color: primaryColor,
      //     ),
      //     onPressed: () {},
      //   ),
      //   title: Image.asset(logo),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       icon: const Icon(
      //         Icons.notifications,
      //         color: primaryColor,
      //       ),
      //       onPressed: () {},
      //     ),
      //     // IconButton(
      //     //   icon: ImageIcon(AssetImage(notification)),
      //     //   onPressed: () {},
      //     // ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WebAppbar(),
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
