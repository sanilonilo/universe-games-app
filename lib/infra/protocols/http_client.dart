abstract class HttpClient {
  Future<dynamic> get(String endpoint,dynamic body, dynamic config);
  Future<dynamic> post(String endpoint,dynamic body, dynamic config);
  Future<dynamic> put(String endpoint,dynamic body, dynamic config);
  Future<dynamic> delete(String endpoint,dynamic body, dynamic config);
}