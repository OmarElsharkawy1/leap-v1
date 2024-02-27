import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/cutom_text.dart';
import 'package:leap/core/widgets/main_button.dart';
import 'package:leap/core/widgets/custom_text_field.dart';
import 'package:leap/core/widgets/snack_bar.dart';
import 'package:leap/features/auth/presentation/controller/login_bloc/login_with_email_and_password_bloc.dart';
import 'package:leap/features/auth/presentation/controller/login_bloc/login_with_email_and_password_events.dart';
import 'package:leap/features/auth/presentation/controller/login_bloc/login_with_email_and_password_states.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final _formKey = GlobalKey<FormState>();

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
      body: SingleChildScrollView(
        child: BlocListener<LoginWithEmailAndPasswordBloc,
            LoginWithEmailAndPasswordState>(
          listener: (context, state) {
            if (state is LoginWithEmailAndPasswordSuccessMessageState) {
              EasyLoading.dismiss();
              Navigator.pushNamedAndRemoveUntil(
                  context, Routes.main, (route) => false);
            } else if (state is LoginWithEmailAndPasswordErrorMessageState) {
              EasyLoading.dismiss();
              errorSnackBar(context, StringManager.unexpectedError.tr());
            } else if (state is LoginWithEmailAndPasswordLoadingState) {
              EasyLoading.show(status: 'loading...');
            }
          },
          child: Column(
            children: [
              SizedBox(
                height: AppSize.screenHeight! * .3,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(AssetPath.loginBackground)),
                    Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'INTRN',
                              fontSize: AppSize.defaultSize! * 3.5,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w700,
                            )
                                .animate()
                                .fadeIn() // uses `Animate.defaultDuration`
                                .scale() // inherits duration from fadeIn
                                .move(delay: 300.ms, duration: 600.ms),
                            // Image.asset(
                            //   AssetPath.logo,
                            //   scale: 2,
                            // ),
                            Text(
                              StringManager.welcomeBack.tr(),
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: AppSize.defaultSize! * 1.8,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              StringManager.youHaveBeenMissed.tr(),
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: AppSize.defaultSize! * 1.2,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )),
                    // Align(
                    //     alignment: Alignment.centerLeft,
                    //     child: TextButton(
                    //         onPressed: () {
                    //           if (context.locale == const Locale('en')) {
                    //             context.setLocale(const Locale('ar'));
                    //           } else {
                    //             context.setLocale(const Locale('en'));
                    //           }
                    //           setState(() {});
                    //         },
                    //         child: Text(
                    //           context.locale == const Locale('en')
                    //               ? 'عربي'
                    //               : 'English',
                    //           style: TextStyle(
                    //               fontSize: AppSize.defaultSize! * 1.2,
                    //               fontWeight: FontWeight.w600),
                    //         )))
                  ],
                ),
              ),
              CustomTextField(
                formKey: _formKey,
                labelText: StringManager.email.tr(),
                controller: emailController,
              ),
              CustomTextField(
                labelText: StringManager.password.tr(),
                obscureText: isVisible,
                controller: passwordController,
                maxLines: 1,
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: Icon(
                    isVisible ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.forgetPassword);
                  },
                  child: Text(
                    StringManager.forgetYourPassword.tr(),
                    style: TextStyle(
                      color: AppColors.forgetPasswordColor,
                      fontSize: AppSize.defaultSize! * 1.2,
                    ),
                  ),
                ),
              ),
              MainButton(
                text: StringManager.login.tr(),
                onTap: () {
                  if (validation()) {
                    BlocProvider.of<LoginWithEmailAndPasswordBloc>(context)
                        .add(LoginWithEmailAndPasswordEvent(
                      email: emailController.text,
                      password: passwordController.text,
                    ));
                  } else {
                    errorSnackBar(
                        context, StringManager.pleaseCompleteYourData.tr());
                  }
                },
              ),
              SizedBox(
                height: AppSize.defaultSize! * 4,
              ),
              Text(
                StringManager.or.tr(),
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: AppSize.defaultSize! * 1.2,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: AppSize.defaultSize! * 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetPath.google),
                  SizedBox(
                    width: AppSize.defaultSize! * 2,
                  ),
                  Image.asset(AssetPath.facebook),
                  SizedBox(
                    width: AppSize.defaultSize! * 2,
                  ),
                  Image.asset(AssetPath.apple),
                  SizedBox(
                    width: AppSize.defaultSize! * 2,
                  ),
                  Image.asset(AssetPath.google),
                ],
              ),
              SizedBox(
                height: AppSize.screenHeight! * .1,
              ),
              Container(
                color: AppColors.containerColor,
                height: AppSize.defaultSize! * 4.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringManager.doNotHaveAccount.tr(),
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: AppSize.defaultSize! * 1.4,
                          fontWeight: FontWeight.w700),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          Routes.signUp,
                        );
                      },
                      child: Text(
                        StringManager.signUp.tr(),
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: AppSize.defaultSize! * 1.5,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validation() {
    if (emailController.text == '') {
      return false;
    } else if (passwordController.text == '') {
      return false;
    } else {
      return true;
    }
  }
}
