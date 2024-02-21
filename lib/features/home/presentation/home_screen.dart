import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/resource_manager/asset_path.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/core/widgets/cutom_text.dart';
import 'package:leap/core/widgets/loading_widget.dart';
import 'package:leap/features/home/presentation/widgets/home_buttons.dart';
import 'package:leap/features/home/presentation/widgets/job_carousel.dart';
import 'package:leap/features/internships/presentation/controller/intern_search_bloc/get_internships_search_bloc.dart';
import 'package:leap/features/internships/presentation/controller/intern_search_bloc/get_internships_search_state.dart';
import 'package:leap/features/jobs/presentation/controller/get_jobs/get_jobs_bloc.dart';
import 'package:leap/features/jobs/presentation/controller/get_jobs/get_jobs_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.onPressedIntern, this.onPressedJob});

  final void Function()? onPressedJob;
  final void Function()? onPressedIntern;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(
        context,
        widget: CustomText(
          text: 'INTRN',
          fontSize: AppSize.defaultSize! * 3,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Column(
        children: [
          BlocBuilder<GetJobsBloc, GetJobsState>(
            builder: (context, state) {
              if (state is GetJobsSuccessMessageState) {
                return CarouselWithIndicatorDemo(
                  jobSlider: state.jobModel,
                );
              } else if (state is GetJobsErrorMessageState) {
                return ErrorWidget(state.errorMessage);
              } else if (state is GetJobsLoadingState) {
                return const LoadingWidget();
              } else {
                return const SizedBox();
              }
            },
          ).animate().fade().scale(),
          BlocBuilder<GetInternshipsBySearchBloc, GetInternshipsBySearchState>(
            builder: (context, state) {
              if (state is GetInternshipsBySearchSuccessMessageState) {
                return CarouselWithIndicatorDemo(
                  jobSlider: state.internModel,
                );
              } else if (state is GetInternshipsBySearchErrorMessageState) {
                return ErrorWidget(state.errorMessage);
              } else if (state is GetInternshipsBySearchLoadingState) {
                return const LoadingWidget();
              } else {
                return const SizedBox();
              }
            },
          ).animate().fade().scale(),
          // const TakeQuiz(),
          HomePageButtons(
            text: StringManager.jobs.tr(),
            onPressed: widget.onPressedJob,
          ).animate().fade().scale(),
          HomePageButtons(
                  text: StringManager.internships.tr(),
                  onPressed: widget.onPressedIntern)
              .animate()
              .fade()
              .scale(),
        ],
      ),
    );
  }
}
