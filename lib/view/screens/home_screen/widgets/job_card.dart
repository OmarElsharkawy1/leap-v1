import 'package:flutter/material.dart';
import 'package:leap/models/job.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

class JobCard extends StatelessWidget {
  const JobCard({Key? key, required this.job}) : super(key: key);
  final Job job;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * .2,
      width: context.screenWidth,
      color: containerColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            job.logo,
            width: 80,
            height: 80,
          ).padding(
            const EdgeInsets.all(6),
          ),
          Column(
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
              Text(
                job.location,
                style: const TextStyle(
                  color: mainFontColor,
                ),
              ),
              Text(
                job.skill,
                style: const TextStyle(
                  color: mainFontColor,
                ),
              ),
              Text(
                job.salary,
                style: const TextStyle(
                  color: mainFontColor,
                ),
              ),
              ElevatedButton(
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
              ).padding(const EdgeInsets.all(6))
            ],
          ).padding(
            const EdgeInsets.all(14),
          ),
        ],
      ),
    );
  }
}
