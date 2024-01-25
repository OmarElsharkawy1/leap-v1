import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/view/constants/colors.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.icon,
    required this.boldText,
    required this.line1Text,
  }) : super(key: key);

  final String icon;
  final String boldText;
  final String line1Text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 226.w,
      height: 156.h,
      child: Card(
        elevation: 0,
        color: backGroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                icon,
                width: 30.w,
                height: 32.h,
              ),
              Text(
                boldText,
                style: TextStyle(
                  fontSize: 20.sp,
                  color: mainFontColor,
                  fontFamily: 'Poppins',
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  line1Text,
                  textAlign: TextAlign.center,
                  // maxLines: 3,
                  style: TextStyle(
                    fontSize: 14.sp,
                    overflow: TextOverflow.clip,
                    color: mainFontColor,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
