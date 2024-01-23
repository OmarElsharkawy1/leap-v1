import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/features/home_screen_web/widgets/top_employer_card.dart';

class TopEmployers extends StatelessWidget {
  const TopEmployers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Top Employers',
          style: TextStyle(
            fontSize: 30,
            color: AppColors.black,
            fontFamily: 'Poppins',
            // fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Recommended top employers',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.mainFontColor,
            fontFamily: 'Poppins',
            // fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopEmployerCard(
              logoString: AssetPath.absolute,
              name: 'Absolute (Vietnam) Ltd',
              location: 'Cairo, Egypt',
              jobs: '2 Jobs',
            ),
            TopEmployerCard(
              logoString: AssetPath.ghtk,
              name: 'GHTK',
              location: 'Cairo, Egypt',
              jobs: '2 Jobs',
            ),
            TopEmployerCard(
              logoString: AssetPath.ung,
              name: 'VNG Cooporation',
              location: 'Cairo, Egypt',
              jobs: '2 Jobs',
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
