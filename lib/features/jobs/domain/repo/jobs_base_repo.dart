import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/features/jobs/data/model/job_model.dart';

abstract class BaseRepositoryJobs {
  Future<Either<JobModel, Failure>> getJobs();
}
