class CreateUserDTO{
  String name;
  String email;
  String password;
  String confirmPassword;

  CreateUserDTO({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword
  });
}