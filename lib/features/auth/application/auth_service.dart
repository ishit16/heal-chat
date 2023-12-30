import 'package:appwrite/models.dart' as model;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
      (r) {
        showSnackBar(context, "Account Created!");
        GoRouter.of(context).push("/login");
      },
    );
    state = false;
  }

  void login({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    state = true;
    final response = await _authAPI.login(email: email, password: password);
    response.fold(
      (l) => showSnackBar(context, l.message),
      (r) {
        showSnackBar(context, "Logged In Successfully!");
        GoRouter.of(context).push("/home");
      },
    );
    state = false;
  }

  Future<model.User?> currentUser() => _authAPI.currentUserAccount();
}

final authServiceProvider = StateNotifierProvider<AuthService, bool>((ref) {
  return AuthService(
    authAPI: ref.watch(authAPIProvider),
  );
});

final currentUserAccountProvider = FutureProvider((ref) async {
  final authService = ref.watch(authServiceProvider.notifier);
  return authService.currentUser();
});
