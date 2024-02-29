import 'package:equatable/equatable.dart';
import 'package:leap/core/models/my_data_model.dart';
import 'package:leap/features/auth/data/auth_remote_data_source.dart';


abstract class SignInWithPlatformState extends Equatable {
  const SignInWithPlatformState();

  @override
  List<Object> get props => [];
}

class SignInWithPlatformInitial extends SignInWithPlatformState {}
class SignWithPlatFormLoadingState extends SignInWithPlatformState{
  const SignWithPlatFormLoadingState();
}
class SignWithGoogleErrorMessageState extends SignInWithPlatformState{
  final String errorMessage ;

  const SignWithGoogleErrorMessageState({required this.errorMessage});


}
class SignWithGoogleSuccesMessageState extends SignInWithPlatformState{
  final AuthWithGoogleModel userData ;

  const SignWithGoogleSuccesMessageState({   required this.userData});

}
