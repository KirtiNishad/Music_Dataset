import 'package:dio/dio.dart';
import '../../configs/app_constants.dart';

class ApiBaseClient {
  static final BaseOptions _opts = BaseOptions(
    baseUrl: "https://api.deezer.com",
    responseType: ResponseType.json,
    connectTimeout: AppConsts.connectionTimeout,
    receiveTimeout: AppConsts.connectionTimeout,
    sendTimeout: AppConsts.connectionTimeout,

  );

  static Dio _createDio() {
    return Dio(_opts);
  }

  static Dio _addInterceptors(Dio dio) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (reqOpt, reqInter) {
          return reqInter.next(reqOpt);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException dioError, handler) async {
          print("Dio Error ==========> $dioError");
          return handler.next(dioError);
        },
      ),
    );
    return dio;
  }

  static final _dio = _createDio();
  static Dio client = _addInterceptors(_dio);
}
