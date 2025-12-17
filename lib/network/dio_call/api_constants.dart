

import 'package:e_commerce/variables/network_variables.dart';

class ApiDeclaration {


  static Map<String, dynamic> headersConfiguration(bool isAuthorize) {

    Map<String, dynamic> headers = {};
    if (isAuthorize) {
      headers["Authorization"] = authorization;
    }
    return headers;
  }

  static const baseUrl = "https://indian-souls-backend-d5g7geakhbazgzhj.southeastasia-01.azurewebsites.net";


  // network msg
  static const noInterNet = "No internet  connection, Please check and try again later.";


  static const registerUrl = "$baseUrl/api/users/register";
  static const loginUrl = "$baseUrl/api/auth/login";
  static const logoutUrl = "$baseUrl/api/auth/logout";
  static const captchaUrl = "$baseUrl/api/captcha/image";
  static const productsUrl = "$baseUrl/api/products";
  static const profileUrl = "$baseUrl/api/users/profile";

}