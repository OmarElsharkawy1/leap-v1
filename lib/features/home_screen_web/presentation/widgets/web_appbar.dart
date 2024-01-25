import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

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
            width: context.screenWidth * .03,
          ),
          // Logo
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Image.asset(
              AssetPath.logo,
              width: 64.w,
              height: 40.h,
            ),
          ),
          // Internships
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, Routes.internships),
              child: Text(
                'Internships',
                style: TextStyle(color: mainFontColor, fontSize: 14.sp),
              ),
            ),
          ),
          // Jobs
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Jobs',
                style: TextStyle(color: mainFontColor, fontSize: 14.sp),
              ),
            ),
          ),
          // Companies
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Companies',
                style: TextStyle(color: mainFontColor, fontSize: 14.sp),
              ),
            ),
          ),
          // Recourses
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: recoursesListValue,
                icon: const Icon(Icons.keyboard_arrow_down_sharp),
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
            padding: EdgeInsets.all(8.0.w),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: optionsListValue,
                icon: const Icon(Icons.keyboard_arrow_down_sharp),
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
            padding: EdgeInsets.all(4.0.w),
            child: OutlinedButton(
              onPressed: () => Navigator.pushNamed(context, Routes.signUp),
              style: OutlinedButton.styleFrom(
                fixedSize: Size(120.w, 32.h),
                padding: EdgeInsets.all(5),
                // side: BorderSide(color: Colors.yellow, width: 5),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
          // Sign In
          Padding(
            padding: EdgeInsets.all(4.0.w),
            child: OutlinedButton(
              onPressed: () => Navigator.pushNamed(context, Routes.signUp),
              style: OutlinedButton.styleFrom(
                fixedSize: Size(120.w, 32.h),
                padding: EdgeInsets.all(5),
                // side: BorderSide(color: Colors.yellow, width: 5),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
          // For Employers
          Padding(
            padding: EdgeInsets.all(4.0.w),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: Size(120.w, 32.h),
                padding: EdgeInsets.all(5),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              child: Text(
                'For Employers',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
          SizedBox(
            width: context.screenWidth * .03,
          ),
        ],
      ),
    );
  }
}
