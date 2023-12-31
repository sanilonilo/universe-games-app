import 'package:app/data/DTOs/user/create_user_dto.dart';

import '../../../domain/usecases/user/create_user_use_case.dart';
import '../../repositories/user_repository.dart';

class CreateUserService implements CreateUserUseCase{
  CreateUserRepository repository;

  @override
  Future<void> create(dto) {
   return repository.create(dto as CreateUserDTO);
  }

  CreateUserService(this.repository);
}