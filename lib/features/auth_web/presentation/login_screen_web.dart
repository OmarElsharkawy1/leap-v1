import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';

class LoginScreenWeb extends StatefulWidget {
  const LoginScreenWeb({super.key});

  @override
  State<LoginScreenWeb> createState() => _LoginScreenWebState();
}

class _LoginScreenWebState extends State<LoginScreenWeb> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Scaffold(
      body: Container(
        width: AppSize.screenWidth,
        height: AppSize.screenHeight,
        color: AppColors.loginBackGroundColor,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                AssetPath.loginBackground,
                width: WidgetRatio.widthRatio(604),
                height: WidgetRatio.heightRatio(564),
                alignment: Alignment.topRight,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                AssetPath.circles,
                width: WidgetRatio.widthRatio(667),
                height: WidgetRatio.heightRatio(304),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetPath.logo,
                    scale: 2,
                  ),
                  Container(
                    width: WidgetRatio.widthRatio(408),
                    height: WidgetRatio.heightRatio(510),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: AppColors.logingBorderColor),
                      color: AppColors.backGroundColor,
                    ),
                    child: Column(children: [
                      Text(
                        'Welcome back !',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: WidgetRatio.widthRatio(24),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'You Have Been Missed For Long Time',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: WidgetRatio.widthRatio(16),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
