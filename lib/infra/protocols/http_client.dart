abstract class HttpClient <Response>{
  Future<Response> get(String endpoint,dynamic body, dynamic config);
  Future<Response> post(String endpoint,dynamic body, dynamic config);
  Future<Response> put(String endpoint,dynamic body, dynamic config);
  Future<Response> delete(String endpoint,dynamic body, dynamic config);
}