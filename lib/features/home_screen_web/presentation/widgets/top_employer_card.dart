import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';

class TopEmployerCard extends StatelessWidget {
  const TopEmployerCard({
    Key? key,
    required this.logoString,
    required this.name,
    required this.location,
    required this.jobs,
  }) : super(key: key);

  final String logoString;
  final String name;
  final String location;
  final String jobs;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      width: 300,
      child: Card(
        elevation: 0,
        color: AppColors.backGroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Image.asset(
                logoString,
                height: 100,
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.mainFontColor,
                  fontFamily: 'Poppins',
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image.asset(
                      AssetPath.location,
                      height: 16,
                      width: 13,
                    ),
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.mainFontColor,
                      fontFamily: 'Poppins',
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    jobs,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.mainFontColor,
                      fontFamily: 'Poppins',
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios, size: 10)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
