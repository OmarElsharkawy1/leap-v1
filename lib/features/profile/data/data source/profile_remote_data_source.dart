import 'package:dio/dio.dart';
import 'package:leap/core/models/my_data_model.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/core/utils/constant_api.dart';
import 'package:leap/core/utils/methods.dart';
import 'package:leap/features/auth/domain/use_case/login_with_email_and_password_use_case.dart';
import 'package:leap/features/auth/domain/use_case/sign_up_use_case.dart';
import 'package:leap/core/models/vacancey_model.dart';

abstract class BaseRemotelyDataSourceProfile {
  Future<MyDataModel> getMyData();
  Future<VacancyModel> getMyApplications();

}

class ProfileRemotelyDateSource extends BaseRemotelyDataSourceProfile {
  @override
  Future<MyDataModel> getMyData() async {
    try {
      final response = await Dio().get(
        ConstantApi.myData,
      );
      MyDataModel jsonData = response.data;
      return jsonData;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "get my data");
    }
  }
  @override
  Future<VacancyModel> getMyApplications() async {
    try {
      final response = await Dio().get(
        ConstantApi.myData,
      );
      VacancyModel jsonData = response.data;
      return jsonData;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "get my data");
    }
  }
}
