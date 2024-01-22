import 'package:flutter/material.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

import 'navigation_bar_icons.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

        //   BottomNavigationBar(
        //   selectedIconTheme: const IconThemeData(color: primaryColor, size: 20),
        //   selectedLabelStyle: const TextStyle(color: primaryColor),
        //   backgroundColor: secondaryBackGroundColor,
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.home_outlined,
        //       ),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.school_outlined,
        //       ),
        //       label: 'Internships',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.collections_bookmark_outlined,
        //       ),
        //       label: 'Resources',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.sticky_note_2_outlined,
        //       ),
        //       label: 'Blogs',
        //     ),
        //   ],
        // );

        Container(
      width: context.screenWidth,
      height: context.screenHeight * .1,
      color: secondaryBackGroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigationBarIcon(
            name: 'Home',
            icon: Icons.home_outlined,
            onPressed: () {},
          ),
          NavigationBarIcon(
            name: 'Internships',
            icon: Icons.school_outlined,
            onPressed: () {},
          ),
          NavigationBarIcon(
            name: 'Jobs',
            icon: Icons.cases_outlined,
            onPressed: () {},
          ),
          NavigationBarIcon(
            name: 'Resources',
            icon: Icons.collections_bookmark_outlined,
            onPressed: () {},
          ),
          NavigationBarIcon(
            name: 'Blogs',
            icon: Icons.sticky_note_2_outlined,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
