import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/routes.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/core/widgets/main_button.dart';
import 'package:leap/features/auth/presentation/widgets/column-with_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController universityController;
  late TextEditingController majorController;

  @override
  void initState() {
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    universityController = TextEditingController();
    majorController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    universityController.dispose();
    majorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(text: 'Sign up'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 2),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppSize.defaultSize! * 4.8,
                decoration: const BoxDecoration(
                  color: AppColors.containerColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You Already have an account?   ',
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: AppSize.defaultSize! * 1.4,
                          fontWeight: FontWeight.w700),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.login);
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: AppSize.defaultSize! * 1.5,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  ColumnWithTextField(
                    text: 'First Name',
                    controller: emailController,
                    width: AppSize.screenWidth! * .4,
                  ),
                  Spacer(),
                  ColumnWithTextField(
                    text: 'First Name',
                    controller: emailController,
                    width: AppSize.screenWidth! * .4,
                  ),
                ],
              ),
              ColumnWithTextField(
                text: 'Phone no',
                controller: phoneController,
              ),
              ColumnWithTextField(
                text: 'Email',
                controller: emailController,
              ),
              ColumnWithTextField(
                text: 'Date of birth',
                controller: emailController,
              ),
              ColumnWithTextField(
                text: 'University',
                controller: universityController,
              ),
              ColumnWithTextField(
                text: 'Major',
                controller: majorController,
              ),
              ColumnWithTextField(
                text: 'Password',
                controller: passwordController,
              ),
              ColumnWithTextField(
                text: 'Confirm Password',
                controller: passwordConfirmController,
              ),
              SizedBox(
                height: AppSize.defaultSize! * 3,
              ),
              const MainButton(
                text: 'Sign up',
              ),
              SizedBox(
                height: AppSize.defaultSize! * 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
