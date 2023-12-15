import 'package:go_router/go_router.dart';
import 'package:heal_chat/features/welcome_screen/view/welcome_screen.dart';

import '../features/auth/view/login_screen.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const WelcomeScreen(),
      routes: [
        GoRoute(
          path: 'login',
          builder: (context, state) => const LoginScreen(),
        ),
      ],
    ),
  ],
);
