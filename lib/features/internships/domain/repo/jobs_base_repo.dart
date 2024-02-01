import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/features/internships/data/model/intern_model.dart';

abstract class BaseRepositoryInternships {
  Future<Either<InternModel, Failure>> getInternships();
}
