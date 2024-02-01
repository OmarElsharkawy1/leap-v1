import 'package:dio/dio.dart';
import 'package:leap/core/models/my_data_model.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/core/utils/constant_api.dart';
import 'package:leap/features/internships/data/model/intern_model.dart';
import 'package:leap/features/jobs/data/model/job_model.dart';

abstract class BaseRemotelyDataSourceInternships {
  Future<InternModel> getInternships();
}

class InternshipsRemotelyDateSource extends BaseRemotelyDataSourceInternships {
  @override
  Future<InternModel> getInternships() async {
    try {
      final response = await Dio().get(
        ConstantApi.myData,
      );
      InternModel jsonData = response.data;
      return jsonData;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "get Internships");
    }
  }
}
