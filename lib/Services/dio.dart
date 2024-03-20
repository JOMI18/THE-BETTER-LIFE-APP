import 'package:dio/dio.dart';
import 'package:the_betterlife_app/Services/sharedPreferece.dart';

final dio = Dio();
String? errorMessage;
CustomSharedPreference pref =
    CustomSharedPreference(); // With default `Options`.

Dio axios() {
  dio.options.baseUrl = "http://10.0.2.2:8000/api/";
  // dio.options.baseUrl = "http://192.168.129.4:8000/api/";
  dio.options.connectTimeout = const Duration(seconds: 5);
  dio.options.receiveTimeout = const Duration(seconds: 13);
  dio.options.headers['accept'] = 'Application/Json';

  dio.interceptors.add(
// Interceptor wrappers in Dio are used to intercept and modify HTTP requests and responses. They provide a way to inject custom logic before a request is sent, after a response is received, or when an error occurs during the request process.
    InterceptorsWrapper(
      onRequest:
          (RequestOptions options, RequestInterceptorHandler handler) async {
        // Do something before request is sent.
        // If you want to resolve the request with custom data,
        // you can resolve a `Response` using `handler.resolve(response)`.
        // If you want to reject the request with a error message,
        // you can reject with a `DioException` using `handler.reject(dioError)`.

        final token = pref.getString('token') ?? '';
        options.headers['Authorization'] = 'Bearer $token';

        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        // Do something with response data.
        // If you want to reject the request with a error message,
        // you can reject a `DioException` object using `handler.reject(dioError)`.
        return handler.next(response);
      },
      onError: (DioException e, ErrorInterceptorHandler handler) {
        String errorMessage;
        switch (e.type) {
          case DioExceptionType.badResponse:
            errorMessage = 'Server error';
            break;
          case DioExceptionType.connectionTimeout:
            errorMessage = 'Connection Timeout';
            break;
          case DioExceptionType.receiveTimeout:
            errorMessage = 'Unable to connect to the server';
            break;
          case DioExceptionType.sendTimeout:
            errorMessage = 'Please check your internet connection';
            break;
          case DioExceptionType.unknown:
            errorMessage = 'Something went wrong';
            break;
          default:
            errorMessage = 'An error occurred';
            break;
        }

        // Create a new DioError instance with the custom message
        DioException customError = DioException(
            requestOptions: e.requestOptions,
            response: e.response,
            type: e.type,
            error: errorMessage,
            message: e.message);
        return handler.next(customError);
      },
    ),
  );

  return dio;
}




// Dio dio() {
//   Dio dio = Dio();
//   const storage = FlutterSecureStorage();

//   //ios
//   //androidsalaudeen
//   dio.options.baseUrl = "http://10.0.2.2:8000/api/";
//   // dio.options.baseUrl = "http://192.168.129.4:8000/api/";
//   // dio.options.baseUrl = "https://back.freedomsbank.com/api/";

//   dio.options.headers['accept'] = 'Application/Json';
//   dio.options.connectTimeout = 5000;
//   dio.options.receiveTimeout = 5000;

  

//   dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
//     // Do something before request is sent
//     final token = await storage.read(key: 'token');
//     options.headers['Authorization'] = 'Bearer $token';

//     return handler.next(options); //continue
//     // If you want to resolve the request with some custom data，
//     // you can resolve a `Response` object eg: `handler.resolve(response)`.
//     // If you want to reject the request with a error message,
//     // you can reject a `DioError` object eg: `handler.reject(dioError)`
//   }, onResponse: (response, handler) {
//     // Do something with response data
//     return handler.next(response); // continue
//     // If you want to reject the request with a error message,
//     // you can reject a `DioError` object eg: `handler.reject(dioError)`
//   }, onError: (DioError e, handler) {
//     // Do something with response error

//     if (e.type == DioErrorType.response) {
//       e.error = e.error;
//       // e.error = 'Server error';
//     }
//     if (e.type == DioErrorType.connectTimeout) {
//       e.error =
//           "Unable to connect to the server. Please check your internet connection";
//     }

//     if (e.type == DioErrorType.receiveTimeout) {
//       e.error = "Unable to connect to the server";
//     }

//     if (e.type == DioErrorType.sendTimeout) {
//       e.error = "please check your internet connection";
//     }
//     if (e.type == DioErrorType.other) {
//       e.error = e.error;
//       // e.error = "Something went wrong";
//     }

//     //return handler.next(e); //continue
//     // If you want to resolve the request with some custom data，
//     // you can resolve a `Response` object eg: `handler.resolve(response)`.

//     // return handler.reject({'error':''});
//     // throw Error();
//     return handler.next(e);
//   }));
//   return dio;
// }
