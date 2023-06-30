import 'package:app/data/DTOs/user/create_user_dto.dart';
import 'package:app/data/repositories/user_repository.dart';
import 'package:app/infra/helpers/http_response.dart';
import 'package:app/infra/protocols/http_client.dart';

class CreateUserHttpRepository implements CreateUserRepository{
  String endpoint;
  dynamic body;
  dynamic config;
  HttpClient<HttpResponse> httpClient;

  @override
  Future<HttpResponse> create(CreateUserDTO dto) async {
    var response = await httpClient.post(endpoint,body,config);
    return response;
  }

  CreateUserHttpRepository({
    required this.httpClient,
    required this.endpoint,
    this.body,
    this.config
  });
}