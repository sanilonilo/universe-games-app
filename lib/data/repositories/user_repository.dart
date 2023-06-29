import '../DTOs/user/create_user_dto.dart';
import '../DTOs/user/auth_user_dto.dart';
import '../../domain/entities/user.dart';

abstract class CreateUserRepository{
  Future<void> create(CreateUserDTO dto);
}

abstract class AuthUserRepository{
  Future<User> auth(AuthUserDTO dto);
}