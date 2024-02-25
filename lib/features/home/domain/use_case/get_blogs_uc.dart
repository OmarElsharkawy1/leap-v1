import 'package:dartz/dartz.dart';
import 'package:leap/core/base_use_case/base_use_case.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/features/home/data/model/blog_model.dart';
import 'package:leap/features/home/domain/repo/jobs_base_repo.dart';

class GetBlogsUseCase extends BaseUseCase<List<BlogModel>, NoParameter> {
  final BaseRepositoryHome baseRepositoryHome;

  GetBlogsUseCase({required this.baseRepositoryHome});

  @override
  Future<Either<List<BlogModel>, Failure>> call(NoParameter parameter) async {
    final result = await baseRepositoryHome.getBlogs();

    return result;
  }
}
