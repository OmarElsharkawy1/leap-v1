import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/features/home/domain/use_case/get_jobs.dart';
import 'package:leap/features/home/presentation/controller/top_five/get_top_five_event.dart';
import 'package:leap/features/home/presentation/controller/top_five/get_top_five_state.dart';

class GetTopFiveBloc extends Bloc<BaseGetTopFiveEvent, GetTopFiveState> {
  GetTopFiveUseCase getTopFiveUseCase;

  GetTopFiveBloc({required this.getTopFiveUseCase})
      : super(GetTopFiveInitial()) {
    on<GetTopFiveEvent>((event, emit) async {
      emit(const GetTopFiveLoadingState());
      final result = await getTopFiveUseCase.call(event.type);
      result.fold(
          (l) => emit(GetTopFiveSuccessMessageState(topFiveModel: l)),
          (r) => emit(GetTopFiveErrorMessageState(
              errorMessage: DioHelper().getTypeOfFailure(r))));
    });
  }
}
