import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:getxarchitecture/app/business/models/app_exceptions.dart';
import 'package:getxarchitecture/app/business/models/server_response.dart';
import 'package:getxarchitecture/app/utils/app_config/config_reader.dart';
import 'package:http/http.dart' as http;

class BaseService {
  Object? postBody;
  dynamic responseData;
  http.Response? response;

  String domainUrl = ConfigReader.domainUrl;

  static const int _timeOutSeconds = 20;

  Map<String, String> mediaTypeHeaders = {
    "content-type": "application/json",
    "accept": "application/json",
  };

  Future<ServerResponse> getGenericRequest({
    required String url,
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final uri = Uri.https(url, path, queryParameters);

      final response = await http
          .get(uri, headers: mediaTypeHeaders)
          .timeout(const Duration(seconds: _timeOutSeconds));

      return _processResponse(response) as ServerResponse;
    } on SocketException {
      throw FetchDataException(
        message: "No internet connection",
        url: url + path,
      );
    } on TimeoutException {
      throw ApiNotRespondingException(
        message: "API not responded in time",
        url: url + path,
      );
    }
  }

  Future<ServerResponse> postGenericRequest({
    required String url,
    required String path,
    required Object? requestBody,
  }) async {
    try {
      final uri = Uri.https(url, path);

      final bodyEncode = json.encode(requestBody);

      final response = await http
          .post(uri, headers: mediaTypeHeaders, body: bodyEncode)
          .timeout(const Duration(seconds: _timeOutSeconds));

      return _processResponse(response) as ServerResponse;
    } on SocketException {
      throw FetchDataException(
        message: "No internet connection",
        url: url + path,
      );
    } on TimeoutException {
      throw ApiNotRespondingException(
        message: "API not responded in time",
        url: url + path,
      );
    }
  }

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return ServerResponse(
          statusCode: response.statusCode,
          response: response,
        );
      case 400:
        throw BadRequestException(
          message: response.body,
          url: response.request!.url.toString(),
        );
      case 401:
        throw InvalidAuthException(
          message: response.body,
          url: response.request!.url.toString(),
        );
      case 403:
        throw InvalidAuthException(
          message: response.body,
          url: response.request!.url.toString(),
        );
      case 500:
        throw FetchDataException(
          message: response.body,
          url: response.request!.url.toString(),
        );
      default:
        throw FetchDataException(
          message: "Something went wrong, status: ${response.statusCode}",
          url: response.request!.url.toString(),
        );
    }
  }
}