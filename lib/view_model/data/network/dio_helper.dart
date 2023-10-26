import 'package:apiii/view_model/data/network/end_points.dart';
import 'package:dio/dio.dart';

//hansabet dio be el base url beta3o el sabet w hanghyer bas fe el endpoint
// ne3ml customize ly kol method fehom

class DioHelper {
  static Dio? dio; // kda khat instance dady w null

  // akhod meno object
  static void init() {
    dio ==
        Dio(
          BaseOptions(
            baseUrl: EndPoints.baseURl,
            //lama yekoun fe error geble el body beta33 el error
            receiveDataWhenStatusError: true,
            //el headers el sabta fe kol el requests
            headers: {},
          ),
        );
  } // lama tekhls el function dy zy fe el shared preference ro7 3ala el main w 3arfha

  //get method
  static Future<Response> get({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
  }) async {
    try {
      return await dio!.get(endPoint, data: body, queryParameters: params);
    } catch (e) {
      rethrow;
    }
  }
}
