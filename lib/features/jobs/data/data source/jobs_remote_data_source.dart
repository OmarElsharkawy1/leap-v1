import 'package:dio/dio.dart';
import 'package:leap/core/models/my_data_model.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/core/utils/constant_api.dart';
import 'package:leap/features/jobs/data/model/job_model.dart';

abstract class BaseRemotelyDataSourceJobs {
  Future<JobModel> getJobs();
}

class JobsRemotelyDateSource extends BaseRemotelyDataSourceJobs {
  @override
  Future<JobModel> getJobs() async {
    try {
      final response = await Dio().get(
        ConstantApi.myData,
      );
      JobModel jsonData = response.data;
      return jsonData;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "get my data");
    }
  }
}
