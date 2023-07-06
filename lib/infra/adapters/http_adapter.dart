import 'dart:convert';

import 'package:app/infra/http/helpers/http_response.dart';
import 'package:app/infra/protocols/http_client.dart';
import 'package:http/http.dart' as http;

class HttpAdapter implements HttpClient<HttpResponse>{

  final String _baseUrl;

  @override
  Future<HttpResponse> get(String endpoint, body, config) async {
    return await http.get(
        Uri.parse('$_baseUrl/$endpoint'),
        headers: config ?? {'Content-Type': 'application/json'}
      )
      .then((value) => HttpResponse(status:value.statusCode,body: jsonDecode(value.body)))
      .catchError((error) => HttpResponse(status: error.statusCode ?? error.status ?? error.response?.status));
  }

  @override
  Future<HttpResponse> post(String endpoint, body, config) async {
    return await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      body: jsonEncode(body),
      headers: config ?? {'Content-Type': 'application/json'}
    )
    .then((value) => HttpResponse(status:value.statusCode,body: jsonDecode(value.body)))
    .catchError((error) => HttpResponse(status: error.statusCode ?? error.status ?? error.response?.status));
  }

  @override
  Future<HttpResponse> put(String endpoint, body, config) async {
    return await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      body: jsonEncode(body),
      headers: config ?? {'Content-Type': 'application/json'} 
    )
    .then((value) => HttpResponse(status:value.statusCode,body: jsonDecode(value.body)))
    .catchError((error) => HttpResponse(status: error.statusCode ?? error.status ?? error.response?.status));
  }
  @override
  Future<HttpResponse> delete(String endpoint, body, config) async {
    return await http.delete(
      Uri.parse('$_baseUrl/$endpoint'),
      body: jsonEncode(body),
      headers: config ?? {'Content-Type': 'application/json'}
    )
    .then((value) => HttpResponse(status:value.statusCode,body: jsonDecode(value.body)))
    .catchError((error) => HttpResponse(status: error.statusCode ?? error.status ?? error.response?.status));
  }

  HttpAdapter(this._baseUrl);

}
