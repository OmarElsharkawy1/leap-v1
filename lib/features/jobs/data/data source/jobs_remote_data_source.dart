import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:leap/core/models/my_data_model.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/core/utils/constant_api.dart';
import 'package:leap/core/models/vacancey_model.dart';

abstract class BaseRemotelyDataSourceJobs {
  Future<List<VacancyModel>> getJobs(VacancySearch vacancySearch);
}

class JobsRemotelyDateSource extends BaseRemotelyDataSourceJobs {
  @override
  Future<List<VacancyModel>> getJobs(VacancySearch vacancySearch) async {
    final body = {
      'text': vacancySearch.text,
      'skill': vacancySearch.skill,
      'area': vacancySearch.area,
    };
    try {

      final response = vacancySearch.type==1? await Dio().get(
        ConstantApi.getJobs,
      ): await Dio().get(
        ConstantApi.getJobs,
        data: body,
      );

      List<VacancyModel> jsonData = List<VacancyModel>.from(
          (response.data as List)
              .map((e) => VacancyModel.fromJson(e)));
      return jsonData;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "getJobs");
    }
  }
}
