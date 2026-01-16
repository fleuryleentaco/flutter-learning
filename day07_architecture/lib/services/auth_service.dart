class AuthService {
  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));

    //Simulation login ok

    return email.isNotEmpty && password.length >= 6;
  }
}
