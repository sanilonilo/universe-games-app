import '../../entities/user.dart';

abstract class AuthUserUseCase{
  Future<User> auth(dynamic dto);
}