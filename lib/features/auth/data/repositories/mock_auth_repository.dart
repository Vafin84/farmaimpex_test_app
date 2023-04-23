import 'package:farmaimpex_test_app/core/domain/entities/error_entity/error_entity.dart';
import 'package:farmaimpex_test_app/features/auth/domain/entities/user_entity/user_entity.dart';
import 'package:farmaimpex_test_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class MockAuthRepository implements AuthRepository {
  @override
  Future<UserEntity> signIn({required String username, required String password}) {
    return Future.delayed(const Duration(seconds: 2), () {
      // throw Exception("Test Error");
      if (username == "admin" && password == "admin") {
        return const UserEntity(id: "0", username: "Admin", email: "admin@test.ru");
      }
      throw ErrorEntity(message: "Ошибка авторизации");
    });
  }
}
