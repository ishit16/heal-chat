import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:heal_chat/common/user_profile_screen.dart';
import 'package:heal_chat/features/auth/application/auth_service.dart';
import 'package:heal_chat/features/auth/view/signup_screen.dart';
import 'package:heal_chat/features/choose_volunteer/presentation/select_users_screen.dart';
import 'package:heal_chat/features/home/presentation/home_screen.dart';
import 'package:heal_chat/features/volunteer_profile/presentation/volunteer_profile_screen.dart';
import 'package:heal_chat/features/welcome_screen/view/welcome_screen.dart';

import '../features/auth/view/login_screen.dart';

enum AppRoute {
  welcome,
  signin,
  signup,
  myprofile,
}

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final currentUser = ref.watch(currentUserAccountProvider);
    return GoRouter(
      initialLocation: "/",
      redirect: (context, state) {
        bool isLoggedIn = currentUser.value != null;
        if (isLoggedIn) {
          if (state.matchedLocation == "/" ||
              state.matchedLocation == "/login") {
            return "/home";
          }
        }
        return null;
      },
      routes: [
        GoRoute(
          path: '/',
          name: AppRoute.welcome.name,
          builder: (context, state) => const WelcomeScreen(),
          routes: [
            GoRoute(
              name: AppRoute.signin.name,
              path: 'login',
              builder: (context, state) => const LoginScreen(),
            ),
            GoRoute(
              path: 'signup',
              builder: (context, state) => const SignUpScreen(),
            ),
          ],
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/users',
          builder: (context, state) => const SelectUsersScreen(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const VolunteerProfileScreen(),
        ),
        GoRoute(
          path: '/my-profile',
          builder: (context, state) => const UserProfileScreen(),
        ),
      ],
    );
  },
);
