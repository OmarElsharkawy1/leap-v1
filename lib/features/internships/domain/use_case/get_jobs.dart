import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/features/internships/data/model/intern_model.dart';
import 'package:leap/features/internships/domain/repo/jobs_base_repo.dart';
import 'package:leap/features/jobs/data/model/job_model.dart';
import 'package:leap/features/jobs/domain/repo/jobs_base_repo.dart';

class GetInternshipsUseCase {
  final BaseRepositoryInternships baseRepositoryInternships;

  GetInternshipsUseCase({required this.baseRepositoryInternships});

  Future<Either<InternModel, Failure>> getInternships() async {
    final result = await baseRepositoryInternships.getInternships();

    return result;
  }
}