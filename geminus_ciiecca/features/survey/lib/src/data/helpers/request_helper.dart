import 'package:dio/dio.dart';

class RequestHelper {
  RequestHelper._();
  static RequestHelper? _instance;
  static RequestHelper get instance => _instance ??= RequestHelper._();
  final _dio = Dio();
  void post(String path, {Object? body})async{
    await _dio.post(path,  data: body);
  }
}
