import 'package:dio/dio.dart';

var url = 'http://52.79.233.120:8000/';
var dio = Dio();
Future postData({data}) async {
  final response = await dio.post(url + 'single-pet/', data: data);
  print(response);
}
