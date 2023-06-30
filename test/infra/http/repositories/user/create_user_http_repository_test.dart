import 'package:app/data/DTOs/user/create_user_dto.dart';
import 'package:app/infra/protocols/http_client.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';
import 'package:app/infra/http/repositories/user/create_user_http_repository.dart';

import '../http_client_stub.dart';

String endpoint = 'signup';

void main(){
  group('Create user http repository', () {
    test('Create user http repository: throw error return status 400', () async {
      HttpClientStub httpClient = HttpClientStub();
      CreateUserHttpRepository sut = CreateUserHttpRepository(httpClient: httpClient,endpoint: endpoint);
      CreateUserDTO data = CreateUserDTO(name: 'name_test',email: 'email@test',password: 'password_test',confirmPassword: 'confirm_password_test');
      var response = await sut.create(data);

      expect(response.status,400);
    });
  });
}