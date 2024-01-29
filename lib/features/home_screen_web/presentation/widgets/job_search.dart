import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/widgets/main_button_web.dart';
import 'package:leap/view/constants/colors.dart';

class JobSearch extends StatelessWidget {
  const JobSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> currencies = [
      "Food",
      "Transport",
      "Personal",
      "Shopping",
      "Medical",
      "Rent",
      "Movie",
      "Salary"
    ];
    String? currentSelectedValue;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              width: 288.w,
              height: 56.h,
              child: TextField(
                expands: true,
                maxLines: null,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  // isDense: false,
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      width: 0.5,
                      color: textFieldBorderColor,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(8.w),
                  fillColor: backGroundColor,
                  hintText: 'What Are You Searching For?',
                  hintStyle: TextStyle(
                    color: textFieldTextColor,
                    fontSize: 18.sp,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 0.5,
                      color: textFieldBorderColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(4.w),
            width: 288.w,
            height: 56.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: AppColors.backGroundColor,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down_sharp),
                iconSize: 12.w,
                padding: EdgeInsets.all(8.w),
                hint: Text(
                  'Select City',
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
                value: currentSelectedValue,
                isDense: true,
                onChanged: (value) {},
                //(String newValue) {
                //                       setState(() {
                //                         _currentSelectedValue = newValue;
                //                         state.didChange(newValue);
                //                       });
                //                     },
                items: currencies.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(4.w),
            width: 288.w,
            height: 56.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: AppColors.backGroundColor,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down_sharp),
                iconSize: 12.w,
                padding: EdgeInsets.all(8.w),
                hint: Text(
                  'Select Major',
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
                value: currentSelectedValue,
                isDense: true,
                onChanged: (value) {},
                //(String newValue) {
                //                       setState(() {
                //                         _currentSelectedValue = newValue;
                //                         state.didChange(newValue);
                //                       });
                //                     },
                items: currencies.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: MainButtonWeb(
              text: 'Search',
              textSize: 14.sp,
              textColor: AppColors.backGroundColor,
              width: 160.w,
              height: 56.h,
              radius: 10,
              color: AppColors.primaryColor,
              borderColor: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
