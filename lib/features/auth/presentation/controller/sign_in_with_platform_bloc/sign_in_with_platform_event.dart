import 'package:equatable/equatable.dart';

abstract class BaseSignInWithPlatformEvent extends Equatable {
  const BaseSignInWithPlatformEvent();

  @override
  List<Object> get props => [];
}


class SignGoogleEvent extends BaseSignInWithPlatformEvent{


}