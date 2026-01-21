import 'package:flutter/material.dart';
import '../../data/services/auth_service.dart';

class AuthViewModel extends ChangeNotifier{
  final AuthService _authService = AuthService();

  bool isLoading = false;
  bool isLoggedIn = false;
  String? error;

  Future<bool> login(String email, String password) async {
    isLoading = true;
    error = null;
    notifyListeners();

    final success = await _authService.login(email, password);

    if (success) {
      isLoggedIn = true;
    } else {
      error = 'Invalid credentials';
    }

    isLoading = false;
    notifyListeners();
    return success;
  }

  void logout() {
    isLoggedIn = false;
    notifyListeners();
  }
}
