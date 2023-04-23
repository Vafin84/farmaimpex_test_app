import 'package:farmaimpex_test_app/features/auth/domain/entities/user_entity/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> signIn({
    required String username,
    required String password,
  });
}
