

import 'package:app/infra/helpers/http_response.dart';
import 'package:app/infra/protocols/http_client.dart';

class HttpClientStub implements HttpClient<HttpResponse>{
  @override
  Future<HttpResponse> get(String endpoint, body, config) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<HttpResponse> post(String endpoint, body, config) {
    // TODO: implement post
    return Future(() => HttpResponse(status: 200));
  }

  @override
  Future<HttpResponse> put(String endpoint, body, config) {
    // TODO: implement put
    throw UnimplementedError();
  }

  @override
  Future<HttpResponse> delete(String endpoint, body, config) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}