import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:task147/core/netwrok/network_service.dart';

@LazySingleton(as: NetworkService)
class NetworkServiceImpl implements NetworkService {
  @override
  Future<http.Response> apiDELETE({
    required Map<String, String> header,
    required Uri url,
  }) async {
    return await http.delete(url, headers: header);
  }

  @override
  Future<http.Response> apiGet({
    required Uri url,
    Map<String, String>? header,
  }) async {
    return await http.get(url, headers: header);
  }

  @override
  Future<http.Response> apiPut({
    required body,
    required Map<String, String> header,
    required Uri url,
  }) async {
    return await http.put(url, body: body, headers: header);
  }

  @override
  Future<http.Response> apiPost({
    required body,
    required Map<String, String> header,
    required Uri url,
  }) async {
    return await http.post(url, body: body, headers: header);
  }
}