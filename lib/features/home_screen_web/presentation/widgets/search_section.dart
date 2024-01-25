import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/card_row.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/job_search.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/jobs_posted.dart';
import 'package:leap/features/home_screen_web/presentation/widgets/search_by_tags_text.dart';
import 'package:leap/view/constants/extensions.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.screenHeight + 50.h,
      child: Stack(
        children: [
          Positioned(
            width: context.screenWidth,
            height: context.screenHeight - 60,
            child: Image.asset(
              AssetPath.homeBackgroundLarge,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: context.screenWidth,
            height: context.screenHeight - 60,
            color: Colors.black.withOpacity(0.5),
          ),
          const Positioned.fill(
              child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              JobsPosted(),
              JobSearch(),
              SearchByTagsText(),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: CardRow(),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
