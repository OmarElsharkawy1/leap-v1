import 'package:dartz/dartz.dart';
import 'package:leap/core/base_use_case/base_use_case.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/features/home/data/model/intern_model.dart';
import 'package:leap/features/home/domain/repo/jobs_base_repo.dart';

class GetTopFiveUseCase extends BaseUseCase<List<VacancyModel>, int> {
  final BaseRepositoryHome baseRepositoryHome;

  GetTopFiveUseCase({required this.baseRepositoryHome});

  @override
  Future<Either<List<VacancyModel>, Failure>> call(int parameter) async {
    final result = await baseRepositoryHome.getTopFive(parameter);

    return result;
  }
}
