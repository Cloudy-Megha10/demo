import 'dart:convert';
import 'package:demo_app/data/apiClient/api_provider.dart';
import 'package:demo_app/data/apiClient/common_response.dart';
import 'package:demo_app/presentation/login_screen/models/login_response.dart';

import '../../../data/apiClient/url_list.dart';

class LoginRepository {
    ApiProvider _provider = ApiProvider();
  Future<CommonResponse<LoginResponse>> loginUserData(
      String? userName,
      String? password) async {
    try {
      print("userName");
      print(userName);
      var body = json.encode({
        "username": userName,
        "password": password,
      });
      print("bodycreate");
      print(body);

      var headers = {
        'Content-Type': 'application/json',
        "api-supported-versions": '1.0',
      };
      final response =
          await _provider.post(UrlList.loginUrl, body, headers);
      LoginResponse res = LoginResponse.fromJson(response);
      CommonResponse<LoginResponse> resq =
          CommonResponse(true, res, "Success");
      return resq;
    } catch (e, stackTrace) {
      String errormsg = "Error in Catch Block" + e.toString();
      CommonResponse<LoginResponse> resq =
           CommonResponse.withoutData(false, errormsg);
      return resq;
    }
  }
}