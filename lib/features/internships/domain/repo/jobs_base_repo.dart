import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/features/internships/data/model/intern_model.dart';

abstract class BaseRepositoryInternships {
  Future<Either<List<VacancyModel>, Failure>> getInternships();
  Future<Either<List<VacancyModel>, Failure>> getInternshipsBySearch(VacancySearch vacancySearch);
}
