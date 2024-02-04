import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/features/jobs/data/model/job_model.dart';
import 'package:leap/features/profile/domain/repo/profile_base_repo.dart';

class GetMyApplicationsUseCase {
  final BaseRepositoryProfile baseRepositoryProfile;

  GetMyApplicationsUseCase({required this.baseRepositoryProfile});

  Future<Either<JobModel, Failure>> getMyApplications() async {
    final result = await baseRepositoryProfile.getMyApplications();

    return result;
  }
}
