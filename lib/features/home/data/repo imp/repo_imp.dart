import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/features/home/data/data%20source/internships_remote_data_source.dart';
import 'package:leap/features/home/data/model/intern_model.dart';
import 'package:leap/features/home/domain/repo/jobs_base_repo.dart';
class HomeRepositoryImp extends BaseRepositoryHome {
  final BaseRemotelyDataSourceHome baseRemotelyDataSourceHome;

  HomeRepositoryImp({required this.baseRemotelyDataSourceHome});

  @override
  Future<Either<TopFiveModel, Failure>> getTopFive(int type) async {
    try {
      final result = await baseRemotelyDataSourceHome.getTopFive(type);
      return Left(result);
    } on Exception catch (e) {
      return right(DioHelper.buildFailure(e));
    }
  }
}
