import '../DTOs/user/create_user_dto.dart';

abstract class CreateUserRepository{
  Future<void> create(CreateUserDTO dto);
}