import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/models/vacancey_model.dart';

abstract class BaseRepositoryJobs {
  Future<Either<List<VacancyModel>, Failure>> getJobs(VacancySearch vacancySearch);
}
