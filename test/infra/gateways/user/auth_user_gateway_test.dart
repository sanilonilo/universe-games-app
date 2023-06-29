import 'package:app/data/DTOs/user/auth_user_dto.dart';
import 'package:app/data/repositories/user_repository.dart';
import 'package:app/domain/entities/user.dart';
import 'package:test/test.dart';
import 'package:app/infra/gateways/user/auth_user_gateway.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<AuthUserGateway>()])
import '../user/auth_user_gateway_test.mocks.dart';

User makeUser = User(id: 1, name: 'name_test', email: 'email@test', token: 'token_test');

class AuthUserRepositoryStub implements AuthUserRepository{
  @override
  Future<User> auth(AuthUserDTO dto) {
   return Future(() => makeUser);
  }
}

void main(){
  group('Auth user gateway', () {
    test('Auth user: error', () {
      MockAuthUserGateway sut = MockAuthUserGateway();
      AuthUserDTO data = AuthUserDTO(email: 'email@test', password: 'password_test');
      when(sut.auth(data)).thenAnswer((realInvocation) => Future.error(Exception()));

      expect(sut.auth(data), throwsException);
    });

    test('Auth user: error', () async {
      AuthUserRepositoryStub repository = AuthUserRepositoryStub();
      AuthUserGateway sut = AuthUserGateway(repository);
      AuthUserDTO data = AuthUserDTO(email: 'email@test', password: 'password_test');
      
      User user = await sut.auth(data);

      expect(user, makeUser);
    });
  });
}