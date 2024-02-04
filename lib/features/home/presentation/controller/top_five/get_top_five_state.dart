import 'package:equatable/equatable.dart';
import 'package:leap/features/home/data/model/intern_model.dart';

abstract class GetTopFiveState extends Equatable {
  const GetTopFiveState();

  @override
  List<Object> get props => [];
}

class GetTopFiveInitial extends GetTopFiveState {}
class GetTopFiveLoadingState extends GetTopFiveState{
  const GetTopFiveLoadingState();
}
class GetTopFiveErrorMessageState extends GetTopFiveState{
  final String errorMessage ;

  const GetTopFiveErrorMessageState({required this.errorMessage});


}

class GetTopFiveSuccessMessageState extends GetTopFiveState{
  final TopFiveModel topFiveModel ;

  const GetTopFiveSuccessMessageState({ required this.topFiveModel});

}