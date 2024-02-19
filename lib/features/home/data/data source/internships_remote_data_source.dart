import 'package:dio/dio.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/core/utils/constant_api.dart';
import 'package:leap/features/home/data/model/intern_model.dart';

abstract class BaseRemotelyDataSourceHome{
  Future<List<VacancyModel>> getTopFive(int type);
}

class InternshipsRemotelyDateSource extends BaseRemotelyDataSourceHome {
  @override
  Future<List<VacancyModel>> getTopFive(int type) async {
    try {
      final response = await Dio().get(
        ConstantApi.myData,
      );
      List<VacancyModel> jsonData = List<VacancyModel>.from(
          (response.data as List).map((e) => VacancyModel.fromJson(e)));
      return jsonData;

    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "get Internships");
    }
  }
}
