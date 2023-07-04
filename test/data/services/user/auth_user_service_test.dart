import 'package:app/data/DTOs/user/auth_user_dto.dart';
import 'package:app/data/repositories/user_repository.dart';
import 'package:app/domain/entities/user.dart';
import 'package:test/test.dart';
import 'package:app/data/services/user/auth_user_service.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<AuthUserService>()])
import '../user/auth_user_service_test.mocks.dart';

User makeUser = User(id: 1, name: 'name_test', email: 'email@test', token: 'token_test');

class AuthUserRepositoryStub implements AuthUserRepository{
  @override
  Future<User> auth(AuthUserDTO dto) {
   return Future(() => makeUser);
  }
}

void main(){
  group('Auth user service', () {
    test('Auth user: error', () {
      MockAuthUserService sut = MockAuthUserService();
      AuthUserDTO data = AuthUserDTO(email: 'email@test', password: 'password_test');
      when(sut.auth(data)).thenAnswer((realInvocation) => Future.error(Exception()));

      expect(sut.auth(data), throwsException);
    });

    test('Auth user: success', () async {
      AuthUserRepositoryStub repository = AuthUserRepositoryStub();
      AuthUserService sut = AuthUserService(repository);
      AuthUserDTO data = AuthUserDTO(email: 'email@test', password: 'password_test');
      
      User user = await sut.auth(data);

      expect(user, makeUser);
    });
  });
}