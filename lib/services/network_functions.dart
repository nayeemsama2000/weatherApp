import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:http/http.dart' as http;
import 'package:weather_app/screens/models/weather_response_model.dart';

class NetworkFunctions {

  getApi({required String url, required Map<String, dynamic> parameters}) async {
    final dioVar = dio.Dio();

    var response = await dioVar.get(url, queryParameters: parameters);

    print('Response status: ${response.statusCode}');
    print('Response data: ${response.data}');

  }

  Future<WeatherResponseModel> getWeatherApi({lat,long}) async {
    print('caaling $lat, $long');
    final dioVar = dio.Dio();
    Map<String, dynamic> params = {
      "key":"5ca8b9cdbba945ff9ad103656230511",
      "q":"$lat,$long",
      "days":"7",
    };

    var response = await dioVar.get(
      'http://api.weatherapi.com/v1/forecast.json',
      queryParameters: params,
    ).catchError((error){
      print('error ${error}');
      return error;
    });

    print('Response status: ${response.statusCode}');
    print('Response data: ${response.data}');

    return weatherResponseModelFromJson(jsonEncode(response.data));
  }

  Future<http.Response> postApi({required String url, required Map body}) async {
    var uri = Uri.parse(url);
    var response = await http.post(uri, body: body);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }
}
