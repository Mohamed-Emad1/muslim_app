import 'package:dio/dio.dart';
import 'package:muslim_app/core/utils/functions/date_formatter.dart';

class ApiService {
  final String _baseQuranURL = "http://api.alquran.cloud/v1/";
  final String _basePrayerTimesURL =
      "https://api.aladhan.com/v1/timings/${formatDate(DateTime.now())}";
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseQuranURL$endPoint');
    return response.data;
  }

  Future<Map<String, dynamic>> getPrayerTimes(
      {required String endPoint}) async {
    var response = await _dio.get('$_basePrayerTimesURL$endPoint');
    return response.data;
  }
}
