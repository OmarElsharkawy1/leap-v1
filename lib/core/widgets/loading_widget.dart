import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.height, this.width, this.size});
final double? height;
final double? width;
final double? size;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height:height?? AppSize.screenHeight!*.3,
        width:width??AppSize.defaultSize!*6,
        child: Center(
          child: LoadingAnimationWidget.twistingDots(
            leftDotColor: AppColors.primaryColor,
            rightDotColor:AppColors.black,
            size:size?? AppSize.defaultSize!*7,
          ),
        ),
      ),
    );
  }
}
