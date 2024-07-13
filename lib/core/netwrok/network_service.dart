import 'package:http/http.dart' as http;

abstract class NetworkService {
  Future<http.Response> apiPost(
      {required dynamic body,
      required Map<String, String> header,
      required Uri url});

  Future<http.Response> apiPut(
      {required dynamic body,
      required Map<String, String> header,
      required Uri url});

  Future<http.Response> apiDELETE({
    required Map<String, String> header,
    required Uri url,
  });

  Future<http.Response> apiGet({
    required Uri url,
    Map<String, String>? header,
  });
}