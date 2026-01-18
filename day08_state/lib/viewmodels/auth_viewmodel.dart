import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthService _authService = AuthService();

  bool isLoading = false;
  bool isLoggedIn = false;

  Future<void> login(String email, String password) async {
    isLoading = true;
    notifyListeners();

    bool success = await _authService.login(email, password);

    isLoggedIn = success;
    isLoading = false;
    notifyListeners();
  }
   void logout() {
      isLoggedIn = false;
      notifyListeners();
    }
}
