
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/base_use_case/base_use_case.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/features/auth/domain/use_case/google_sign.dart';
import 'package:leap/features/auth/presentation/controller/sign_in_with_platform_bloc/sign_in_with_platform_event.dart';
import 'package:leap/features/auth/presentation/controller/sign_in_with_platform_bloc/sign_in_with_platform_state.dart';


class SignInWithPlatformBloc extends Bloc<BaseSignInWithPlatformEvent, SignInWithPlatformState> {
  final SignInWithGoogleUC signInWithGoogleUC;


  SignInWithPlatformBloc({
    required this.signInWithGoogleUC,

  }) : super(SignInWithPlatformInitial()) {
    on<SignGoogleEvent>((event, emit) async {
      emit(const SignWithPlatFormLoadingState());
      final result = await signInWithGoogleUC.call(const NoParameter());
      result.fold(
              (l) => emit(SignWithGoogleSuccesMessageState(userData: l)),
              (r) => emit(SignWithGoogleErrorMessageState(errorMessage: DioHelper().getTypeOfFailure(r))));
    });





  }
}
