import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:nomo_app/core/data/enums/api_type.enum.dart';
import 'package:nomo_app/core/services/network_services/dio_request.dart';
import 'package:nomo_app/core/services/network_services/http.service.dart';

// ApiResponse class to handle API responses
class ApiResponse<T> {
  final T data;
  final String? errorMessage;

  ApiResponse({required this.data, this.errorMessage});
}

// ApiRestService class implementing HttpService
class ApiRestService implements HttpService {
  @override
  Future<ApiResponse<Map<String, dynamic>>?> handleGetRequest(
    String endPoint, {
    bool isPublic = true,
    Map<String, dynamic> queryParameters = const {},
    ApiType? type,
    Function({required String message})? onError,
  }) async {
    try {
      Dio dio = Request.createApiClient(onError: onError, isPublic: isPublic,type: type);

      final response = await dio.get(
        endPoint,
        queryParameters: queryParameters,
      );

      Map<String, dynamic> apiResponse =
          (response.data != null && response.data is Map)
              ? Map<String, dynamic>.from(response.data)
              : {};

      return ApiResponse(data: apiResponse);
    } catch (e) {
      if (kDebugMode) {
        print("Error ${e.toString()}");
      }
      return null;
    }
  }

  @override
  Future<ApiResponse<List<Map<String, dynamic>>>?> handleGetRequestList(
    String endPoint, {
    bool isPublic = true,
    Map<String, dynamic> queryParameters = const {},
    ApiType? type,
    Function({required String message})? onError,
  }) async {
    try {
      Dio dio = Request.createApiClient(onError: onError, isPublic: isPublic,type: type);

      final response = await dio.get(
        endPoint,
        queryParameters: queryParameters,
      );

      List<Map<String, dynamic>> apiResponse =
          (response.data != null && response.data is List)
              ? List<Map<String, dynamic>>.from(response.data)
              : [];

      return ApiResponse(data: apiResponse);
    } catch (e) {
      if (kDebugMode) {
        print("Error ${e.toString()}");
      }
      return null;
    }
  }

  @override
  Future<ApiResponse<Map<String, dynamic>>?> handlePostRequest(
    String endPoint,
    data, {
    bool isPublic = true,
    Map<String, dynamic> queryParameters = const {},
    ApiType? type,
    Function({required String message})? onError,
  }) async {
    try {
      Dio dio = Request.createApiClient(onError: onError, isPublic: isPublic,type: type);
      print(dio);
      final response = await dio.post(
        endPoint,
        data: data,
        queryParameters: queryParameters,
      );

      Map<String, dynamic> apiResponse =
          (response.data != null && response.data is Map)
              ? Map<String, dynamic>.from(response.data)
              : {};

      return ApiResponse(data: apiResponse);
    } catch (e) {
      if (kDebugMode) {
        print("Error ${e.toString()}");
      }
      return null;
    }
  }

  @override
  Future<ApiResponse<List<Map<String, dynamic>>>?> handlePostRequestList(
    String endPoint,
    List? data, {
    bool isPublic = true,
    Map<String, dynamic> queryParameters = const {},
    ApiType? type,
    Function({required String message})? onError,
  }) async {
    try {
      Dio dio = Request.createApiClient(onError: onError, isPublic: isPublic,type: type);

      final response = await dio.post(
        endPoint,
        data: data,
        queryParameters: queryParameters,
      );

      List<Map<String, dynamic>> apiResponse =
          (response.data != null && response.data is List)
              ? List<Map<String, dynamic>>.from(response.data)
              : [];

      return ApiResponse(data: apiResponse);
    } catch (e) {
      if (kDebugMode) {
        print("Error ${e.toString()}");
      }
      return null;
    }
  }

  @override
  Future<ApiResponse<Map<String, dynamic>>?> handlePutRequest(
    String endPoint, {
    bool isPublic = true,
    Map<String, dynamic>? data,
    Map<String, dynamic> queryParameters = const {},
    ApiType? type,
    Function({required String message})? onError,
  }) async {
    {
      try {
        Dio dio = Request.createApiClient(onError: onError, isPublic: isPublic,type: type);

        final response = await dio.put(
          endPoint,
          data: data,
          queryParameters: queryParameters,
        );

        Map<String, dynamic> apiResponse =
            (response.data != null && response.data is Map)
                ? Map<String, dynamic>.from(response.data)
                : {};

        return ApiResponse(data: apiResponse);
      } catch (e) {
        if (kDebugMode) {
          print("Error ${e.toString()}");
        }
        return null;
      }
    }
  }

  @override
  Future<ApiResponse<Map<String, dynamic>>?> handleDeleteRequest(
    String endPoint, {
    bool isPublic = true,
    Map<String, dynamic> queryParameters = const {},
    ApiType? type,
    Function({required String message})? onError,
  }) async {
    try {
      Dio dio = Request.createApiClient(onError: onError, isPublic: isPublic, type: type);

      final response = await dio.delete(
        endPoint,
        queryParameters: queryParameters,
      );

      Map<String, dynamic> apiResponse =
          (response.data != null && response.data is Map)
              ? Map<String, dynamic>.from(response.data)
              : {};

      return ApiResponse(data: apiResponse);
    } catch (e) {
      if (kDebugMode) {
        print("Error ${e.toString()}");
      }
      return null;
    }
  }
}
