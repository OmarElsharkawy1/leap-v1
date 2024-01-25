import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/colors.dart';

class JobsPosted extends StatelessWidget {
  const JobsPosted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '1500+',
            style: TextStyle(
              color: AppColors.backGroundColor,
              fontWeight: FontWeight.bold,
              fontSize: 72.sp,
            ),
          ),
          Text(
            ' Jobs posted week ago',
            style: TextStyle(
              color: AppColors.backGroundColor,
              fontSize: 72.sp,
            ),
          ),
        ],
      ),
    );
  }
}
