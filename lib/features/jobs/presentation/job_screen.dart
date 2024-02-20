import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/core/widgets/area_drop_down.dart';
import 'package:leap/core/widgets/custom_drop_down.dart';
import 'package:leap/core/widgets/custom_text_field.dart';
import 'package:leap/core/widgets/empty_widget.dart';
import 'package:leap/core/widgets/jobs_and_intern_card.dart';
import 'package:leap/core/widgets/loading_widget.dart';
import 'package:leap/core/widgets/main_button.dart';
import 'package:leap/core/widgets/major_drop_down.dart';
import 'package:leap/features/jobs/presentation/controller/get_jobs/get_jobs_bloc.dart';
import 'package:leap/features/jobs/presentation/controller/get_jobs/get_jobs_event.dart';
import 'package:leap/features/jobs/presentation/controller/get_jobs/get_jobs_state.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  late TextEditingController searchController;
  List<VacancyModel>? tempData;

  int isFirst = 0;

  @override
  void initState() {
    BlocProvider.of<GetJobsBloc>(context).add(GetJobsEvent());
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
      appBar: homeAppBar(context, text: StringManager.jobs.tr()),
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
                SizedBox(
                  height: AppSize.defaultSize!,
                ),
                const CitiesDropDown(),
                SizedBox(
                  height: AppSize.defaultSize!,
                ),
                const MajorDropDown(),
                SizedBox(
                  height: AppSize.defaultSize! * 2,
                ),
                MainButton(
                  text: StringManager.search.tr(),
                  onTap: () {
                    BlocProvider.of<GetJobsBloc>(context)
                        .add(GetJobsEvent(type: 2));
                  },
                ),
                SizedBox(
                  height: AppSize.defaultSize! * 4,
                ),
                BlocBuilder<GetJobsBloc, GetJobsState>(
                    builder: (context, state) {
                  if (state is GetJobsSuccessMessageState) {
                    isFirst++;
                    tempData = state.jobModel;
                    return state.jobModel.isEmpty
                        ? const EmptyWidget()
                        : ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: state.jobModel.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    EdgeInsets.all(AppSize.defaultSize! * .5),
                                child: JobsAndInternCard(
                                  vacancyModel: state.jobModel[index],
                                )
                                    .animate()
                                    .fadeIn() // uses `Animate.defaultDuration`
                                    .scale() // inherits duration from fadeIn
                                    .move(delay: 300.ms, duration: 600.ms)
                                // runs after the above w/new duration
                                ,
                              );
                            });
                  } else if (state is GetJobsErrorMessageState) {
                    return ErrorWidget(state.errorMessage);
                  } else if (state is GetJobsLoadingState) {
                    if (isFirst == 0) {
                      return const LoadingWidget();
                    } else {
                      return tempData!.isEmpty
                          ? const EmptyWidget()
                          : ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemCount: tempData!.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      EdgeInsets.all(AppSize.defaultSize! * .5),
                                  child: JobsAndInternCard(
                                    vacancyModel: tempData![index],
                                  )
                                      .animate()
                                      .fadeIn() // uses `Animate.defaultDuration`
                                      .scale() // inherits duration from fadeIn
                                      .move(delay: 300.ms, duration: 600.ms)
                                  // runs after the above w/new duration
                                  ,
                                );
                              });
                    }
                  } else {
                    return const SizedBox();
                  }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
