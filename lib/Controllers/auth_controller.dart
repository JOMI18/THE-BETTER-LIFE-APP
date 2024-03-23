// ignore_for_file: library_prefixes

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_betterlife_app/Services/dio.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:the_betterlife_app/The-Betterlife-App/Imports.dart';
// import 'package:flutter_laravel/models/user.dart';

// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthController {
  final container = ProviderContainer();

  // Future<Map> login(Map creds) async {
  //   try {
  //     Dio.Response response = await dio().post('/sanctum/token', data: creds);
  //     if (response.data['status'] != 'error' && !response.data['otp']) {
  //       String token = response.data['token'];
  //       _isLoggedIn = true;
  //       _user = User.fromJson(response.data['user']);
  //       _token = token;
  //       storeToken(token);
  //       notifyListeners();
  //     }
  //     return response.data;
  //   } on Dio.DioError catch (e) {
  //     return {'status': 'error', 'message': e.error};
  //   }
  // }

  Future<Map> register(Map creds) async {
    // print(" cred----$creds");

    try {
      Dio.Response response = await axios().post('/auth/register', data: creds);
      // print(response.data);
      // if (response.data['status'] != 'error') {
      //   // String token = response.data['token'];

      // }

      return response.data;
    } on Dio.DioException catch (e) {
      return {'status': 'error', 'message': e.error};
    }
  }

  Future<Map> login(Map creds) async {
    try {
      Dio.Response response = await axios().post('/auth/login', data: creds);
      return response.data;
    } on Dio.DioException catch (e) {
      return {'status': 'error', 'message': e.error};
    }
  }

  Future<Map> checkOtp(Map creds) async {
    try {
      Dio.Response response = await axios().post('/auth/checkotp', data: creds);

      return response.data;
    } on Dio.DioException catch (e) {
      return {'status': 'error', 'message': e.error};
    }
  }

  Future<Map> sendOtp(Map creds) async {
    try {
      Dio.Response response = await axios().post('/auth/sendotp', data: creds);
      return response.data;
    } on Dio.DioException catch (e) {
      return {'status': 'error', 'message': e.error};
    }
  }

  Future<Map> createTxPin(Map creds) async {
    try {
      Dio.Response response =
          await axios().post('/account/createtxpin', data: creds);
      print(response);
      // if (response.data['status'] != 'error') {
      //   // String token = response.data['token'];

      // }

      return response.data;
    } on Dio.DioException catch (e) {
      return {'status': 'error', 'message': e.error};
    }
  }

  Future<Map> verifyBvn(Map creds) async {
    try {
      Dio.Response response =
          await axios().post('/account/verifybvn', data: creds);

      return response.data;
    } on Dio.DioException catch (e) {
      return {'status': 'error', 'message': e.error};
    }
  }

  Future<Map> sendSms(Map creds) async {
    try {
      Dio.Response response =
          await axios().post('/account/SendSmsOtp', data: creds);

      return response.data;
    } on Dio.DioException catch (e) {
      return {'status': 'error', 'message': e.error};
    }
  }
}
