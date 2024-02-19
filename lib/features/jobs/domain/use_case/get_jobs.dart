import 'package:dartz/dartz.dart';
import 'package:leap/core/base_use_case/base_use_case.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/features/jobs/domain/repo/jobs_base_repo.dart';

class GetJobsUseCase extends BaseUseCase<List<VacancyModel>,VacancySearch>{
  final BaseRepositoryJobs baseRepositoryJobs;

  GetJobsUseCase({required this.baseRepositoryJobs});

  @override
  Future<Either<List<VacancyModel>, Failure>> call(VacancySearch parameter) async {
    final result = await baseRepositoryJobs.getJobs(parameter);

    return result;
  }
}
