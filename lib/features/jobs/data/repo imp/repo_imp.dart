import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/features/jobs/data/data%20source/jobs_remote_data_source.dart';
import 'package:leap/features/jobs/data/model/job_model.dart';
import 'package:leap/features/jobs/domain/repo/jobs_base_repo.dart';

class JobsRepositoryImp extends BaseRepositoryJobs {
  final BaseRemotelyDataSourceJobs baseRemotelyDataSourceJobs;

  JobsRepositoryImp({required this.baseRemotelyDataSourceJobs});

  @override
  Future<Either<JobModel, Failure>> getJobs() async {
    try {
      final result = await baseRemotelyDataSourceJobs.getJobs();
      return Left(result);
    } on Exception catch (e) {
      return right(DioHelper.buildFailure(e));
    }
  }
}