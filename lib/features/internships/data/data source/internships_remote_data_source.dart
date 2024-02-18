import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:leap/core/models/my_data_model.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/core/utils/constant_api.dart';
import 'package:leap/features/internships/data/model/intern_model.dart';
import 'package:leap/core/models/vacancey_model.dart';

abstract class BaseRemotelyDataSourceInternships {
  Future<List<VacancyModel>> getInternships();
}

class InternshipsRemotelyDateSource extends BaseRemotelyDataSourceInternships {
  @override
  Future<List<VacancyModel>> getInternships() async {
    Options options = await DioHelper().options();


    try {
      final response = await Dio().get(
        ConstantApi.getGetInternships,
          // options: options
      );
      List<VacancyModel> jsonData = List<VacancyModel>.from(
          (response.data as List)
              .map((e) => VacancyModel.fromJson(e)));
      log('$jsonData dddddddddd');
      return jsonData;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "get Internships");
    }
  }
}
