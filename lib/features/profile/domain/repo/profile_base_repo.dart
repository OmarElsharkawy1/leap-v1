import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/models/my_data_model.dart';

abstract class BaseRepositoryProfile {
  Future<Either<MyDataModel, Failure>> getMyData();
}
