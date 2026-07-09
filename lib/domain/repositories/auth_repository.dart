import '../models/user.dart';

abstract class AuthRepository {
  Future<AppUser> login(String username, String password);
  Future<AppUser> register(String username, String email, String password);
  Future<void> logout();
  Future<AppUser?> getCurrentUser();
}
