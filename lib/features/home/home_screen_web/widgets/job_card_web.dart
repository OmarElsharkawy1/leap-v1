import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/models/job.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

class JobCard extends StatelessWidget {
  const JobCard({Key? key, required this.job}) : super(key: key);
  final Job job;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryBackGroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: WidgetRatio.heightRatio(265),
            width: WidgetRatio.widthRatio(468),
            color: AppColors.containerColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    job.logo,
                    width: WidgetRatio.widthRatio(96),
                    height: WidgetRatio.heightRatio(80),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.title,
                      style: const TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ).padding(
                      const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Text(
                            'Posted 2 days ago ',
                            style: TextStyle(
                              color: mainFontColor,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Text(
                          '. Full Time',
                          style: TextStyle(
                            color: mainFontColor,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Image.asset(AssetPath.location),
                        ),
                        Text(
                          job.location,
                          style: const TextStyle(
                            color: mainFontColor,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Image.asset(AssetPath.skillIconBlack),
                        ),
                        Text(
                          job.skill,
                          style: const TextStyle(
                            color: mainFontColor,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Text(
                      job.salary,
                      style: const TextStyle(
                        color: mainFontColor,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: WidgetRatio.widthRatio(250),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(
                              color: primaryColor,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        child: const Text('View Job'),
                      ).padding(const EdgeInsets.all(6)),
                    )
                  ],
                ).padding(
                  const EdgeInsets.all(14),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Container(
            height: WidgetRatio.heightRatio(265),
            width: WidgetRatio.widthRatio(468),
            color: AppColors.containerColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    job.logo,
                    width: WidgetRatio.widthRatio(96),
                    height: WidgetRatio.heightRatio(80),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.title,
                      style: const TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ).padding(
                      const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Text(
                            'Posted 2 days ago ',
                            style: TextStyle(
                              color: mainFontColor,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Text(
                          '. Full Time',
                          style: TextStyle(
                            color: mainFontColor,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Image.asset(AssetPath.location),
                        ),
                        Text(
                          job.location,
                          style: const TextStyle(
                            color: mainFontColor,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Image.asset(AssetPath.skillIconBlack),
                        ),
                        Text(
                          job.skill,
                          style: const TextStyle(
                            color: mainFontColor,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Text(
                      job.salary,
                      style: const TextStyle(
                        color: mainFontColor,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: WidgetRatio.widthRatio(250),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(
                              color: primaryColor,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        child: const Text('View Job'),
                      ).padding(const EdgeInsets.all(6)),
                    )
                  ],
                ).padding(
                  const EdgeInsets.all(14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
