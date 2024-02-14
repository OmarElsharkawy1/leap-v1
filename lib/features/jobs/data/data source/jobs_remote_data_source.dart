import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:leap/core/models/my_data_model.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/core/utils/constant_api.dart';
import 'package:leap/core/models/vacancey_model.dart';

abstract class BaseRemotelyDataSourceJobs {
  Future<List<VacancyModel>> getJobs();
}

class JobsRemotelyDateSource extends BaseRemotelyDataSourceJobs {
  @override
  Future<List<VacancyModel>> getJobs() async {
    try {
      final response = await Dio().get(
        ConstantApi.getJobs,
      );

      List<VacancyModel> jsonData = List<VacancyModel>.from(
          (response.data as List)
              .map((e) => VacancyModel.fromJson(e)));
      log('$jsonData sssssssssssss');
      return jsonData;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "get my data");
    }
  }
}
