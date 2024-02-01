import 'package:equatable/equatable.dart';
import 'package:leap/features/jobs/data/model/job_model.dart';


abstract class GetJobsState extends Equatable {
  const GetJobsState();

  @override
  List<Object> get props => [];
}

class GetJobsInitial extends GetJobsState {}
class GetJobsLoadingState extends GetJobsState{
  const GetJobsLoadingState();
}
class GetJobsErrorMessageState extends GetJobsState{
  final String errorMessage ;

  const GetJobsErrorMessageState({required this.errorMessage});


}

class GetJobsSuccessMessageState extends GetJobsState{
  final JobModel jobModel ;

  const GetJobsSuccessMessageState({ required this.jobModel});

}