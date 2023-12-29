import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heal_chat/api/auth_api.dart';
import 'package:heal_chat/utils/snackbar.dart';

class AuthService extends StateNotifier<bool> {
  final AuthAPI _authAPI;
  AuthService({required AuthAPI authAPI})
      : _authAPI = authAPI,
        super(false);
  // if the app is loading?
  // state = isLoading
  void signUp({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    state = true;
    final response = await _authAPI.signUp(email: email, password: password);
    response.fold(
      (l) => showSnackBar(context, l.message),
      (r) => print(r.email),
    );
  }
}

final authServiceProvider = StateNotifierProvider<AuthService, bool>((ref) {
  return AuthService(
    authAPI: ref.watch(authAPIProvider),
  );
});
