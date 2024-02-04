import 'package:dio/dio.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/core/utils/constant_api.dart';
import 'package:leap/features/home/data/model/intern_model.dart';

abstract class BaseRemotelyDataSourceHome{
  Future<TopFiveModel> getTopFive(int type);
}

class InternshipsRemotelyDateSource extends BaseRemotelyDataSourceHome {
  @override
  Future<TopFiveModel> getTopFive(int type) async {
    try {
      final response = await Dio().get(
        ConstantApi.myData,
      );
      TopFiveModel jsonData = response.data;
      return jsonData;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(dioError: e, endpointName: "get Internships");
    }
  }
}
