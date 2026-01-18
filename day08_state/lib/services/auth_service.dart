class AuthService {
  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));

    if (email == 'admin@test.com' && password == '1234') {
      return true;
    }
    return false;
  }
}
