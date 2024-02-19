import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/features/home/data/model/intern_model.dart';

abstract class BaseRepositoryHome {
  Future<Either<List<VacancyModel>, Failure>> getTopFive(int type);
}
