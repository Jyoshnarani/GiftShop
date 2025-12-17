import 'package:dio/dio.dart';
import 'package:e_commerce/network/dio_call/api_constants.dart';
import 'package:e_commerce/network/dio_call/dio_client_call.dart';
import 'package:e_commerce/network/models/login_model.dart';
import 'package:flutter/cupertino.dart';

class LogInAPI {
  DioClientCall dioClientCall = DioClientCall();

  Future<LoginModel> doLogIn(data) async {
    try {
      Map<String, dynamic> headers = ApiDeclaration.headersConfiguration(false);
      debugPrint("api : ${ApiDeclaration.loginUrl},\n data : $data,\n headers : $headers ");
      final res = await dioClientCall.post(ApiDeclaration.loginUrl, data: data, options: Options(headers: headers));
      return LoginModel.fromJson(res);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
