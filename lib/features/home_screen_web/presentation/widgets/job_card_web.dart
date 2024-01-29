import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/widgets/main_button_web.dart';
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
            height: 238.h,
            width: 468.w,
            color: AppColors.containerColor,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 24.w),
                  child: Image.asset(
                    job.logo,
                    width: 96.w,
                    height: 80.h,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.title,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    ).padding(
                      EdgeInsets.symmetric(
                        vertical: 8.h,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4.0.w),
                          child: Text(
                            'Posted 2 days ago ',
                            style: TextStyle(
                              color: mainFontColor,
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Text(
                          '. Full Time',
                          style: TextStyle(
                            color: mainFontColor,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4.0.w),
                          child: Image.asset(
                            AssetPath.location,
                            width: 13.w,
                            height: 16.h,
                          ),
                        ),
                        Text(
                          job.location,
                          style: TextStyle(
                              color: mainFontColor,
                              fontFamily: 'Poppins',
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4.0.w),
                          child: Image.asset(
                            AssetPath.skillIconBlack,
                            width: 13.w,
                            height: 16.h,
                          ),
                        ),
                        Text(
                          job.skill,
                          style: TextStyle(
                            color: mainFontColor,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Text(
                      job.salary,
                      style: TextStyle(
                        color: mainFontColor,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.h, right: 16.w),
                      child: SizedBox(
                        width: 316.w,
                        height: 32.h,
                        child: MainButtonWeb(
                          text: 'View Job',
                          textSize: 16.sp,
                          borderColor: AppColors.primaryColor,
                          height: 32.h,
                          width: 316.w,
                          color: AppColors.backGroundColor,
                          textColor: AppColors.primaryColor,
                          radius: 10,
                        ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ElevatedButton.styleFrom(
                        //     padding: EdgeInsets.all(0),
                        //     elevation: 0,
                        //     shape: const RoundedRectangleBorder(
                        //       side: BorderSide(
                        //         color: primaryColor,
                        //       ),
                        //       borderRadius: BorderRadius.all(
                        //         Radius.circular(5),
                        //       ),
                        //     ),
                        //   ),
                        //   child: Text(
                        //     'View Job',
                        //     style: TextStyle(fontSize: 14.sp),
                        //   ),
                        // ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 16.w),
          Container(
            height: 238.h,
            width: 468.w,
            color: AppColors.containerColor,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 24.w),
                  child: Image.asset(
                    job.logo,
                    width: 96.w,
                    height: 80.h,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.title,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    ).padding(
                      EdgeInsets.symmetric(
                        vertical: 8.h,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4.0.w),
                          child: Text(
                            'Posted 2 days ago ',
                            style: TextStyle(
                              color: mainFontColor,
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Text(
                          '. Full Time',
                          style: TextStyle(
                            color: mainFontColor,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4.0.w),
                          child: Image.asset(
                            AssetPath.location,
                            width: 13.w,
                            height: 16.h,
                          ),
                        ),
                        Text(
                          job.location,
                          style: TextStyle(
                              color: mainFontColor,
                              fontFamily: 'Poppins',
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4.0.w),
                          child: Image.asset(
                            AssetPath.skillIconBlack,
                            width: 13.w,
                            height: 16.h,
                          ),
                        ),
                        Text(
                          job.skill,
                          style: TextStyle(
                            color: mainFontColor,
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Text(
                      job.salary,
                      style: TextStyle(
                        color: mainFontColor,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.h, right: 16.w),
                      child: SizedBox(
                        width: 316.w,
                        height: 32.h,
                        child: MainButtonWeb(
                          text: 'View Job',
                          textSize: 16.sp,
                          borderColor: AppColors.primaryColor,
                          height: 32.h,
                          width: 316.w,
                          color: AppColors.backGroundColor,
                          textColor: AppColors.primaryColor,
                          radius: 10,
                        ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ElevatedButton.styleFrom(
                        //     padding: EdgeInsets.all(0),
                        //     elevation: 0,
                        //     shape: const RoundedRectangleBorder(
                        //       side: BorderSide(
                        //         color: primaryColor,
                        //       ),
                        //       borderRadius: BorderRadius.all(
                        //         Radius.circular(5),
                        //       ),
                        //     ),
                        //   ),
                        //   child: Text(
                        //     'View Job',
                        //     style: TextStyle(fontSize: 14.sp),
                        //   ),
                        // ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
