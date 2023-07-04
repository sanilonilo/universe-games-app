

import 'package:app/infra/helpers/http_response.dart';
import 'package:app/infra/protocols/http_client.dart';

class HttpClientStub implements HttpClient<HttpResponse>{

  int statusMock;

  @override
  Future<HttpResponse> get(String endpoint, body, config) {
    return Future(() => HttpResponse(status: statusMock));
  }

  @override
  Future<HttpResponse> post(String endpoint, body, config) {
    return Future(() => HttpResponse(status: statusMock));
  }

  @override
  Future<HttpResponse> put(String endpoint, body, config) {
    return Future(() => HttpResponse(status: statusMock));
  }

  @override
  Future<HttpResponse> delete(String endpoint, body, config) {
    return Future(() => HttpResponse(status: statusMock));
  }

  HttpClientStub({required this.statusMock});
}