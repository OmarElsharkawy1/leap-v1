import 'package:dartz/dartz.dart';
import 'package:leap/core/base_use_case/base_use_case.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/models/my_data_model.dart';
import 'package:leap/features/profile/data/data%20source/profile_remote_data_source.dart';
import 'package:leap/features/profile/domain/repo/profile_base_repo.dart';

class GetMyDataUseCase {
  final BaseRepositoryProfile baseRepositoryProfile;

  GetMyDataUseCase({required this.baseRepositoryProfile});

  Future<Either<MyDataModel, Failure>> getMyData() async {
    final result = await baseRepositoryProfile.getMyData();

    return result;
  }
}
