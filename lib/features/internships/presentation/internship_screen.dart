import 'dart:async';
import 'dart:developer';
import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/service/navigator_services.dart';
import 'package:leap/core/service/service_locator.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/core/widgets/custom_drop_down.dart';
import 'package:leap/core/widgets/custom_text_field.dart';
import 'package:leap/core/widgets/empty_widget.dart';
import 'package:leap/core/widgets/jobs_and_intern_card.dart';
import 'package:leap/core/widgets/loading_widget.dart';
import 'package:leap/core/widgets/main_button.dart';
import 'package:leap/features/internships/presentation/controller/get_internships/get_internships_bloc.dart';
import 'package:leap/features/internships/presentation/controller/get_internships/get_internships_event.dart';
import 'package:leap/features/internships/presentation/controller/get_internships/get_internships_state.dart';
import 'package:leap/features/internships/presentation/controller/intern_search_bloc/get_internships_search_bloc.dart';
import 'package:leap/features/internships/presentation/controller/intern_search_bloc/get_internships_search_event.dart';
import 'package:leap/features/internships/presentation/controller/intern_search_bloc/get_internships_search_state.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class InternshipScreen extends StatefulWidget {
  const InternshipScreen({super.key});

  @override
  State<InternshipScreen> createState() => _InternshipScreenState();
}

class _InternshipScreenState extends State<InternshipScreen> {
  late TextEditingController searchController;
  List<VacancyModel>? tempData;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _refreshIndicatorKey = GlobalKey<LiquidPullToRefreshState>();
  static int refreshNum = 10; // number that changes when refreshed

  Future<void> _handleRefresh() async {
    final Completer<void> completer = Completer<void>();
    Timer(const Duration(seconds: 3), () {
      completer.complete();
    });
    // BlocProvider.of<GetInternshipsBloc>(getIt<NavigationService>().navigatorKey.currentContext!).add(GetInternshipsEvent());

    setState(() {
      refreshNum = Random().nextInt(13);
    });
    return completer.future.then<void>((_) {
      ScaffoldMessenger.of(getIt<NavigationService>().navigatorKey.currentContext!).showSnackBar(
        SnackBar(
          content: const Text('Refresh complete'),
          action: SnackBarAction(
            label: 'RETRY',
            onPressed: () {
              _refreshIndicatorKey.currentState!.show();
            },
          ),
        ),
      );
    });
  }

  int isFirst = 0;

  @override
  void initState() {
    searchController = TextEditingController();
    BlocProvider.of<GetInternshipsBySearchBloc>(context).add(GetInternshipsBySearchEvent(type: 1));

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
      body: LiquidPullToRefresh(
        key: _refreshIndicatorKey,
        onRefresh: _handleRefresh,
        showChildOpacityTransition: false,
        child: SizedBox(
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
                    onTap: () {
                      BlocProvider.of<GetInternshipsBySearchBloc>(context).add(GetInternshipsBySearchEvent(type: 2,));

                    },
                  ),
                  SizedBox(
                    height: AppSize.defaultSize! * 4,
                  ),
                  BlocBuilder<GetInternshipsBySearchBloc, GetInternshipsBySearchState>(
                      builder: (context, state) {
                    if (state is GetInternshipsBySearchSuccessMessageState) {
                      isFirst++;
                      tempData = state.internModel;
                      return state.internModel.isEmpty
                          ? const EmptyWidget()
                          : ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemCount: state.internModel.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      EdgeInsets.all(AppSize.defaultSize! * .5),
                                  child: JobsAndInternCard(
                                    vacancyModel: state.internModel[index],
                                  )
                                      .animate()
                                      .fadeIn() // uses `Animate.defaultDuration`
                                      .scale() // inherits duration from fadeIn
                                      .move(delay: 300.ms, duration: 600.ms)
                                  // runs after the above w/new duration
                                  ,
                                );
                              });
                    } else if (state is GetInternshipsBySearchErrorMessageState) {
                      return ErrorWidget(state.errorMessage);
                    } else if (state is GetInternshipsBySearchLoadingState) {
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
                                    padding: EdgeInsets.all(
                                        AppSize.defaultSize! * .5),
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
      ),
    );
  }
}
