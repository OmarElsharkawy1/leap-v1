import 'package:equatable/equatable.dart';
import 'package:leap/core/models/my_data_model.dart';


abstract class GetMyDataState extends Equatable {
  const GetMyDataState();

  @override
  List<Object> get props => [];
}

class GetMyDataInitial extends GetMyDataState {}
class GetMyDataLoadingState extends GetMyDataState{
  const GetMyDataLoadingState();
}
class GetMyDataErrorMessageState extends GetMyDataState{
  final String errorMessage ;

  const GetMyDataErrorMessageState({required this.errorMessage});


}

class GetMyDataSuccessMessageState extends GetMyDataState{
  final MyDataModel myDataModel ;

  const GetMyDataSuccessMessageState({ required this.myDataModel});

}