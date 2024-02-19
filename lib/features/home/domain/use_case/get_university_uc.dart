import 'package:dartz/dartz.dart';
import 'package:leap/core/base_use_case/base_use_case.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/features/home/data/model/university_model.dart';
import 'package:leap/features/home/domain/repo/jobs_base_repo.dart';

class GetUniversityUseCase
    extends BaseUseCase<List<UniversityModel>, NoParameter> {
  final BaseRepositoryHome baseRepositoryHome;

  GetUniversityUseCase({required this.baseRepositoryHome});

  @override
  Future<Either<List<UniversityModel>, Failure>> call(
      NoParameter parameter) async {
    final result = await baseRepositoryHome.getUniversity();

    return result;
  }
}
