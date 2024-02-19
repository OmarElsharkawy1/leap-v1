import 'package:dio/dio.dart';
import 'package:leap/core/models/vacancey_model.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/core/utils/constant_api.dart';
import 'package:leap/features/home/data/model/cities_model.dart';
import 'package:leap/features/home/data/model/intern_model.dart';
import 'package:leap/features/home/data/model/major_model.dart';
import 'package:leap/features/home/data/model/university_model.dart';

abstract class BaseRemotelyDataSourceHome{
  Future<List<VacancyModel>> getTopFive(int type);
  Future<List<CitiesModel>> getCities();
  Future<List<MajorModel>> getMajor();
  Future<List<UniversityModel>> getUniversity();
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
  @override
  Future<List<CitiesModel>> getCities() async {
    try {
      final response = await Dio().get(
        ConstantApi.myData,
      );
      List<CitiesModel> jsonData = List<CitiesModel>.from(
          (response.data as List).map((e) => CitiesModel.fromJson(e)));
      return jsonData;

    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "get getCities");
    }
  }
  @override
  Future<List<MajorModel>> getMajor() async {
    try {
      final response = await Dio().get(
        ConstantApi.myData,
      );
      List<MajorModel> jsonData = List<MajorModel>.from(
          (response.data as List).map((e) => MajorModel.fromJson(e)));
      return jsonData;

    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "getMajor");
    }
  }

  @override
  Future<List<UniversityModel>> getUniversity() async {
    try {
      final response = await Dio().get(
        ConstantApi.myData,
      );
      List<UniversityModel> jsonData = List<UniversityModel>.from(
          (response.data as List).map((e) => UniversityModel.fromJson(e)));
      return jsonData;

    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "getUniversity");
    }
  }
}
