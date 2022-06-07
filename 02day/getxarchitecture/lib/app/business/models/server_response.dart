import 'dart:convert';
import 'package:http/http.dart' as http;

class ServerResponse {
  http.Response? response;
  int statusCode;
  String? errorMessage;

  bool get ok {
    return statusCode == 200 || statusCode == 201;
  }

  dynamic get data {
    if (response != null) {
      return json.decode(response!.body);
    }
    return null;
  }

  ServerResponse({
    required this.statusCode,
    this.response,
  });
  
  ServerResponse.error({
    required this.statusCode,
    this.errorMessage,
  });
}
