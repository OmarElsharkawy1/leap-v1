import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/features/internships/data/data%20source/internships_remote_data_source.dart';
import 'package:leap/features/internships/data/model/intern_model.dart';
import 'package:leap/features/internships/domain/repo/jobs_base_repo.dart';
import 'package:leap/features/jobs/data/data%20source/jobs_remote_data_source.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/features/jobs/domain/repo/jobs_base_repo.dart';

class InternshipsRepositoryImp extends BaseRepositoryInternships {
  final BaseRemotelyDataSourceInternships baseRemotelyDataSourceInternships;

  InternshipsRepositoryImp({required this.baseRemotelyDataSourceInternships});

  @override
  Future<Either<List<VacancyModel>, Failure>> getInternships() async {
    try {
      final result = await baseRemotelyDataSourceInternships.getInternships();
      return Left(result);
    } on Exception catch (e) {
      return right(DioHelper.buildFailure(e));
    }
  }
}
