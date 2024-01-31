import 'package:appwrite/models.dart' as model;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:heal_chat/api/auth_api.dart';
import 'package:heal_chat/api/user_api.dart';
import 'package:heal_chat/models/user_model.dart';
import 'package:heal_chat/utils/snackbar.dart';
import 'package:heal_chat/utils/utils.dart';

class AuthService extends StateNotifier<bool> {
  final AuthAPI _authAPI;
  final UserAPI _userAPI;
  AuthService({required AuthAPI authAPI, required UserAPI userAPI})
      : _authAPI = authAPI,
        _userAPI = userAPI,
        super(false);
  // if the app is loading?
  // state = isLoading
  void signUp({
    required String email,
    required String password,
    required String name,
    required BuildContext context,
  }) async {
    state = true;
    final response =
        await _authAPI.signUp(email: email, password: password, name: name);
    response.fold(
      (l) => showSnackBar(context, l.message),
      (r) async {
        UserModel userModel = UserModel(
          email: email,
          name: name,
          profilePic: '',
          mostRecentSchool: '',
          mostRecentDegree: '',
          uid: r.$id,
          bio: '',
        );
        final res = await _userAPI.saveUserData(userModel);
        res.fold((l) {
          showSnackBar(context, l.message);
        }, (r) {
          showSnackBar(context, "Account Created!");
          GoRouter.of(context).push("/login");
        });
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
  void logout(BuildContext context) async {
    final response = await _authAPI.logout();
    response.fold(
      (l) => null,
      (r) => {
        GoRouter.of(context).pushReplacement("/login"),
      },
    );
  }

  Future<UserModel> getUserData(String uid) async {
    final document = await _userAPI.getUserData(uid);
    final updatedUser = UserModel.fromMap(document.data);
    return updatedUser;
  }
}

final currentUserDetailsProvider = FutureProvider((ref) {
  final currentUserId = ref.watch(currentUserAccountProvider).value!.$id;
  final userDetails = ref.watch(userDataProvider(currentUserId));
  return userDetails.value;
});

final userDataProvider = FutureProvider.family((ref, String uid) async {
  final authController = ref.watch(authServiceProvider.notifier);
  return authController.getUserData(uid);
});

final authServiceProvider = StateNotifierProvider<AuthService, bool>((ref) {
  return AuthService(
    userAPI: ref.watch(userAPIProvider),
    authAPI: ref.watch(authAPIProvider),
  );
});

final currentUserAccountProvider = FutureProvider((ref) async {
  final authService = ref.watch(authServiceProvider.notifier);
  return authService.currentUser();
});
