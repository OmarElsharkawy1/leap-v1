import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/base_use_case/base_use_case.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/core/utils/enums.dart';
import 'package:leap/features/home/domain/use_case/get_cities.dart';
import 'package:leap/features/home/domain/use_case/get_major_uc.dart';
import 'package:leap/features/home/domain/use_case/get_university_uc.dart';
import 'package:leap/features/home/presentation/controller/get_cities_major_universtity/get_options_events.dart';
import 'package:leap/features/home/presentation/controller/get_cities_major_universtity/get_options_states.dart';

class OptionsBloc extends Bloc<OptionsEvent, GetOptionsStates> {
  final GetCitiesUseCase getCitiesUseCase;

  final GetMajorUseCase getMajorUseCase;

  final GetUniversityUseCase getUniversityUseCase;

  OptionsBloc(
      {required this.getUniversityUseCase,
      required this.getMajorUseCase,
      required this.getCitiesUseCase})
      : super(const GetOptionsStates()) {
    on<GetMajorEvent>(getMajor);
    on<GetUniversityEvent>(getUniversity);
    on<GetCitiesEvent>(getCities);
  }

  FutureOr<void> getMajor(
      GetMajorEvent event, Emitter<GetOptionsStates> emit) async {
    final result = await getMajorUseCase.call(const NoParameter());
    result.fold(
        (l) => emit(
            state.copyWith(getMajor: l, getMajorRequest: RequestState.loaded)),
        (r) => emit(state.copyWith(
            getMajorRequest: RequestState.error,
            getMajorMessage: DioHelper().getTypeOfFailure(r))));
  }

  FutureOr<void> getUniversity(
      GetUniversityEvent event, Emitter<GetOptionsStates> emit) async {
    final result = await getUniversityUseCase.call(const NoParameter());
    result.fold(
        (l) => emit(state.copyWith(
            getUniversity: l, getUniversityRequest: RequestState.loaded)),
        (r) => emit(state.copyWith(
            getUniversityRequest: RequestState.error,
            getUniversityMessage: DioHelper().getTypeOfFailure(r))));
  }

  FutureOr<void> getCities(
      GetCitiesEvent event, Emitter<GetOptionsStates> emit) async {
    final result = await getCitiesUseCase.call(const NoParameter());
    result.fold(
        (l) => emit(state.copyWith(
            getCities: l, getCitiesRequest: RequestState.loaded)),
        (r) => emit(state.copyWith(
            getCitiesRequest: RequestState.error,
            getCitiesMessage: DioHelper().getTypeOfFailure(r))));
  }
}
