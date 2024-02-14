import 'package:equatable/equatable.dart';
import 'package:leap/features/internships/data/model/intern_model.dart';
import 'package:leap/core/models/vacancey_model.dart';


abstract class GetInternshipsState extends Equatable {
  const GetInternshipsState();

  @override
  List<Object> get props => [];
}

class GetInternshipsInitial extends GetInternshipsState {}
class GetInternshipsLoadingState extends GetInternshipsState{
  const GetInternshipsLoadingState();
}
class GetInternshipsErrorMessageState extends GetInternshipsState{
  final String errorMessage ;

  const GetInternshipsErrorMessageState({required this.errorMessage});


}

class GetInternshipsSuccessMessageState extends GetInternshipsState{
  final List<VacancyModel> internModel ;

  const GetInternshipsSuccessMessageState({ required this.internModel});

}