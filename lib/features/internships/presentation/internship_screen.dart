import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/core/widgets/custom_drop_down.dart';
import 'package:leap/core/widgets/custom_text_field.dart';
import 'package:leap/core/widgets/jobs_and_intern_card.dart';
import 'package:leap/core/widgets/main_button.dart';

class InternshipScreen extends StatefulWidget {
  const InternshipScreen({super.key});

  @override
  State<InternshipScreen> createState() => _InternshipScreenState();
}

class _InternshipScreenState extends State<InternshipScreen> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context, text: StringManager.internships.tr()),
      body: SizedBox(
        height: AppSize.screenHeight,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AppSize.defaultSize! * 2),
            child: Column(
              children: [
                SizedBox(
                    height: AppSize.defaultSize! * 4,
                    child: CustomTextField(
                      controller: searchController,
                      hintText: StringManager.whatAreYouLookingFor.tr(),
                      hintStyle: TextStyle(
                        fontSize: AppSize.defaultSize! * 1.3,
                      ),
                    )),
                CustomDropDown(
                  text: '',
                  hintText: StringManager.selectArea.tr(),
                ),
                CustomDropDown(
                  text: '',
                  hintText: StringManager.selectSkill.tr(),
                ),
                SizedBox(
                  height: AppSize.defaultSize! * 2,
                ),
                MainButton(
                  text: StringManager.search.tr(),
                  onTap: () {},
                ),
                SizedBox(
                  height: AppSize.defaultSize! * 4,
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(AppSize.defaultSize! * .5),
                        child: const JobsAndInternCard().animate()
                            .fadeIn() // uses `Animate.defaultDuration`
                            .scale() // inherits duration from fadeIn
                            .move(delay: 300.ms, duration: 600.ms) ,
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
