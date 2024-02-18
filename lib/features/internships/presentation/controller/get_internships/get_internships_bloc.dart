import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/features/internships/domain/use_case/get_jobs.dart';
import 'package:leap/features/internships/presentation/controller/get_internships/get_internships_event.dart';
import 'package:leap/features/internships/presentation/controller/get_internships/get_internships_state.dart';

class GetInternshipsBloc extends Bloc<BaseGetInternshipsEvent, GetInternshipsState> {
  GetInternshipsUseCase getInternshipsUseCase;

  GetInternshipsBloc({required this.getInternshipsUseCase}) : super(GetInternshipsInitial()) {
    on<GetInternshipsEvent>((event, emit) async {
      emit(const GetInternshipsLoadingState());
      final result = await getInternshipsUseCase.getInternships();
      result.fold(
          (l) => emit(GetInternshipsSuccessMessageState(internModel: l)),
          (r) => emit(GetInternshipsErrorMessageState(
              errorMessage: DioHelper().getTypeOfFailure(r))));
    });
  }
}
