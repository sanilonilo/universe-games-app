import 'package:app/data/DTOs/user/create_user_dto.dart';
import 'package:app/data/services/user/create_user_service.dart';
import 'package:app/data/repositories/user_repository.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<CreateUserService>()])
import '../user/create_user_service_test.mocks.dart';

class RepositoryStub extends Fake implements CreateUserRepository{
  @override
  Future<void> create(CreateUserDTO dto) {
   return Future(() => {});
  }
}

void main(){
  group("Create user service", (){
    test("Create user : error",() async {
      MockCreateUserService sut = MockCreateUserService();
      CreateUserDTO data = CreateUserDTO(name: 'name_test',email: 'email@test',password: 'password_test',confirmPassword: 'confirm_password_test');
      when(sut.create(data)).thenAnswer((realInvocation) => Future.error(Exception()));
      
    
      expect(sut.create(data), throwsException);
    });

    test("Create user : success",() async {
      RepositoryStub repository = RepositoryStub();
      CreateUserService sut = CreateUserService(repository);
      CreateUserDTO data = CreateUserDTO(name: 'name_test',email: 'email@test',password: 'password_test',confirmPassword: 'confirm_password_test');
      await sut.create(data);
    });
  });
}