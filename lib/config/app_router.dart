import 'package:go_router/go_router.dart';
import 'package:mymobility_flutter/screens/homepage_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home_screen',
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
    ),
  ],
);
