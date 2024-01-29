import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/widgets/custom_text_button.dart';
import 'package:leap/core/widgets/main_button_web.dart';
import 'package:leap/view/constants/colors.dart';

class WebAppbar extends StatefulWidget {
  const WebAppbar({Key? key}) : super(key: key);

  @override
  State<WebAppbar> createState() => _WebAppbarState();
}

class _WebAppbarState extends State<WebAppbar> {
  final List<String> recoursesList = ['Recourses', 'Recourse1', 'Recourse2'];
  final List<String> optionsList = ['Options', 'Option1', 'Option2'];

  @override
  Widget build(BuildContext context) {
    String recoursesListValue = recoursesList.first;
    String optionsListValue = optionsList.first;
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: 80.w,
          ),
          // Logo
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 4.h),
            child: Image.asset(
              AssetPath.logo,
              width: 64.w,
              height: 40.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: CustomTextButton(
              text: 'Internships',
              textWeight: FontWeight.w500,
              textSize: 14.sp,
              textColor: AppColors.mainFontColor,
              textFamily: 'Poppins',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: CustomTextButton(
              text: 'Jobs',
              textWeight: FontWeight.w500,
              textSize: 14.sp,
              textColor: AppColors.mainFontColor,
              textFamily: 'Poppins',
            ),
          ),
          // Companies
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: CustomTextButton(
              text: 'Internships',
              textWeight: FontWeight.w500,
              textSize: 14.sp,
              textColor: AppColors.mainFontColor,
              textFamily: 'Poppins',
            ),
          ),
          // Recourses
          Padding(
            padding: EdgeInsets.all(4.0.w),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: recoursesListValue,
                icon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 12.w,
                ),
                // elevation: 16,
                style: TextStyle(
                    color: mainFontColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  // setState(() {
                  //   recoursesListValue = value!;
                  // });
                },
                items:
                    recoursesList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          //Options
          Padding(
            padding: EdgeInsets.all(4.0.w),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: optionsListValue,
                icon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 12.w,
                ),
                // elevation: 16,
                style: TextStyle(
                    color: mainFontColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  // setState(() {
                  //   optionsListValue = value!;
                  // });
                },
                items:
                    optionsList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          const Spacer(),
          // Sign Up
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 4.w),
            child: MainButtonWeb(
              text: 'Sign Up',
              textColor: AppColors.primaryColor,
              textSize: 13.sp,
              color: AppColors.backGroundColor,
              height: 32.h,
              width: 120.w,
              borderColor: AppColors.primaryColor,
              radius: 5,
            ),
          ),
          // Sign In
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 4.w),
            child: MainButtonWeb(
              text: 'Sign In',
              textColor: AppColors.primaryColor,
              textSize: 13.sp,
              color: AppColors.backGroundColor,
              height: 32.h,
              width: 120.w,
              borderColor: AppColors.primaryColor,
              radius: 5,
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 4.w),
            child: MainButtonWeb(
              text: 'For Employers',
              textColor: AppColors.primaryColor,
              textSize: 13.sp,
              color: AppColors.backGroundColor,
              height: 32.h,
              width: 120.w,
              borderColor: AppColors.primaryColor,
              radius: 5,
            ),
          ),
          SizedBox(
            width: 80.w,
          ),
        ],
      ),
    );
  }
}
