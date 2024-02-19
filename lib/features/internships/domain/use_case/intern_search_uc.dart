import 'package:dartz/dartz.dart';
import 'package:leap/core/base_use_case/base_use_case.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/features/internships/domain/repo/jobs_base_repo.dart';

class GetInternshipsBySearchUseCase extends BaseUseCase<List<VacancyModel>,VacancySearch>{
  final BaseRepositoryInternships baseRepositoryInternships;

  GetInternshipsBySearchUseCase({required this.baseRepositoryInternships});
@override
  Future<Either<List<VacancyModel>, Failure>> call(VacancySearch parameter) async {
    final result = await baseRepositoryInternships.getInternshipsBySearch(parameter);

    return result;
  }
}


