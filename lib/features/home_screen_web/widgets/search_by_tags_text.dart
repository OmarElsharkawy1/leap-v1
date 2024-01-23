import 'package:flutter/material.dart';
import 'package:leap/view/constants/colors.dart';

class SearchByTagsText extends StatelessWidget {
  const SearchByTagsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Search by tags:',
            style: TextStyle(
              color: backGroundColor,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Text(
            ' Developer, Engineer, Support, Senior, Junior',
            style: TextStyle(
              color: backGroundColor,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
