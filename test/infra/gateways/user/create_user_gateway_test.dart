import 'package:app/data/DTOs/user/create_user_dto.dart';
import 'package:app/infra/gateways/user/create_user_gateway.dart';
import 'package:app/data/repositories/user_repository.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<CreateUserGateway>()])
import '../user/create_user_gateway_test.mocks.dart';

class RepositoryStub extends Fake implements CreateUserRepository{
  @override
  Future<void> create(CreateUserDTO dto) {
   return Future(() => {});
  }
}

void main(){
  group("Create user gateway", (){
    test("Create user : error",() async {
      MockCreateUserGateway sut = MockCreateUserGateway();
      CreateUserDTO data = CreateUserDTO(name: 'name_test',email: 'email@test',password: 'password_test',confirmPassword: 'confirm_password_test');
      when(sut.create(data)).thenAnswer((realInvocation) => Future.error(Exception()));
      
    
      expect(sut.create(data), throwsException);
    });

    test("Create user : success",() async {
      RepositoryStub repository = RepositoryStub();
      CreateUserGateway sut = CreateUserGateway(repository);
      CreateUserDTO data = CreateUserDTO(name: 'name_test',email: 'email@test',password: 'password_test',confirmPassword: 'confirm_password_test');
      await sut.create(data);
    });
  });
}