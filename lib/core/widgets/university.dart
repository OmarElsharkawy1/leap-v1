import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/utils/enums.dart';
import 'package:leap/core/widgets/loading_widget.dart';
import 'package:leap/features/home/data/model/major_model.dart';
import 'package:leap/features/home/data/model/university_model.dart';
import 'package:leap/features/home/presentation/controller/get_cities_major_universtity/get_options_bloc.dart';
import 'package:leap/features/home/presentation/controller/get_cities_major_universtity/get_options_states.dart';

class UniversityDropDown extends StatefulWidget {
  const UniversityDropDown({
    super.key,
  });

  static UniversityModel? selectedValue;

  @override
  State<UniversityDropDown> createState() => _UniversityDropDownState();
}

class _UniversityDropDownState extends State<UniversityDropDown> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OptionsBloc, GetOptionsStates>(
      builder: (context, state) {
        if (state.getUniversityRequest == RequestState.loaded) {
          return Container(
            // width: AppSize.screenWidth! * .9,
            height: AppSize.defaultSize! * 5,
            decoration: BoxDecoration(
                border:
                Border.all(color: AppColors.borderColor.withOpacity(.4)),
                borderRadius: BorderRadius.circular(AppSize.defaultSize! * .5)),
            child: DropdownButton2<UniversityModel>(
              value: UniversityDropDown.selectedValue,
              buttonStyleData: ButtonStyleData(
                width: AppSize.screenWidth! * .9,
              ),
              dropdownStyleData: DropdownStyleData(
                  width: AppSize.screenWidth! * .9,
                  // padding: EdgeInsets.symmetric(horizontal: 10),
                  maxHeight: AppSize.screenHeight! * .5),
              underline: const SizedBox(),
              onChanged: (UniversityModel? newValue) {
                setState(() {
                  UniversityDropDown.selectedValue = newValue;
                });
              },
              hint: Padding(
                padding: EdgeInsets.only(left: AppSize.defaultSize!),
                child: Text(
                  StringManager.university.tr(),
                  style: TextStyle(
                    fontSize: AppSize.defaultSize!,
                  ),
                ),
              ),
              items: state.getUniversity
                  .map<DropdownMenuItem<UniversityModel>>((UniversityModel value) {
                return DropdownMenuItem(
                  value: value,
                  child: Padding(
                    padding: EdgeInsets.only(left: AppSize.defaultSize!),
                    child: Text(
                      value.universityName ?? "",
                      style: TextStyle(
                        fontSize: AppSize.defaultSize!,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          );
        } else if (state.getUniversityRequest == RequestState.loading) {
          return Container(
            // width: AppSize.screenWidth! * .9,
            height: AppSize.defaultSize! * 4,
            decoration: BoxDecoration(
                border:
                Border.all(color: AppColors.borderColor.withOpacity(.4)),
                borderRadius: BorderRadius.circular(AppSize.defaultSize! * .5)),
            child: DropdownButton2(
                buttonStyleData: ButtonStyleData(
                  width: AppSize.screenWidth! * .9,
                ),
                dropdownStyleData: DropdownStyleData(
                    width: AppSize.screenWidth! * .9,
                    // padding: EdgeInsets.symmetric(horizontal: 10),
                    maxHeight: AppSize.screenHeight! * .5),
                underline: const SizedBox(),
                hint: Padding(
                  padding: EdgeInsets.only(left: AppSize.defaultSize!),
                  child: Text(
                    StringManager.selectArea.tr(),
                    style: TextStyle(
                      fontSize: AppSize.defaultSize!,
                    ),
                  ),
                ),
                items: []),
          );
        } else if (state.getUniversityRequest == RequestState.error) {
          return ErrorWidget(state.getUniversityMessage);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
