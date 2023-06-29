import 'package:app/data/repositories/user_repository.dart';
import 'package:app/domain/entities/user.dart';
import '../../../domain/usecases/user/auth_user_use_case.dart';

class AuthUserGateway implements AuthUserUseCase{
  AuthUserRepository repository;

  @override
  Future<User> auth(dto) {
    return repository.auth(dto);
  }

  AuthUserGateway(this.repository);
}