import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/features/jobs/domain/repo/jobs_base_repo.dart';

class GetJobsUseCase {
  final BaseRepositoryJobs baseRepositoryJobs;

  GetJobsUseCase({required this.baseRepositoryJobs});

  Future<Either<List<VacancyModel>, Failure>> getJobs() async {
    final result = await baseRepositoryJobs.getJobs();

    return result;
  }
}
