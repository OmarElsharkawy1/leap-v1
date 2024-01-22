import 'package:flutter/material.dart';
import 'package:leap/view/constants/assets.dart';
import 'package:leap/view/constants/extensions.dart';
import 'package:leap/view/screens/home_screen_web/widgets/card_row.dart';
import 'package:leap/view/screens/home_screen_web/widgets/job_search.dart';
import 'package:leap/view/screens/home_screen_web/widgets/jobs_posted.dart';
import 'package:leap/view/screens/home_screen_web/widgets/search_by_tags_text.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.screenHeight - 100,
      child: Stack(
        children: [
          Positioned(
            width: context.screenWidth,
            height: context.screenHeight - 200,
            child: Image.asset(
              homeBackgroundLarge,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: context.screenWidth,
            height: context.screenHeight - 200,
            color: Colors.black.withOpacity(0.5),
          ),
          const Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              JobsPosted(),
              JobSearch(),
              SearchByTagsText(),
            ],
          )),
          const CardRow(),
        ],
      ),
    );
  }
}
