import 'package:dio/dio.dart';

abstract class AppApi {
  Future<Response> getContacts();
}
