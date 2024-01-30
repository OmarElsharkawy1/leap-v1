import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/models/my_data_model.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/features/profile/data/data%20source/profile_remote_data_source.dart';
import 'package:leap/features/profile/domain/repo/profile_base_repo.dart';

class ProfileRepositoryImp extends BaseRepositoryProfile {
  final BaseRemotelyDataSourceProfile baseRemotelyDataSourceProfile;

  ProfileRepositoryImp({required this.baseRemotelyDataSourceProfile});

  @override
  Future<Either<MyDataModel, Failure>> getMyData() async {
    try {
      final result = await baseRemotelyDataSourceProfile.getMyData();
      return Left(result);
    } on Exception catch (e) {
      return right(DioHelper.buildFailure(e));
    }
  }
}
