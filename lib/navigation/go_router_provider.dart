// GoRouter configuration
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mymobility_flutter/screens/bookmarks_screen.dart';
import 'package:mymobility_flutter/screens/home_page.dart';
import 'package:mymobility_flutter/screens/map_screen.dart';
import 'package:mymobility_flutter/screens/no_connection_screen.dart';
import 'package:mymobility_flutter/screens/profile_screen.dart';
import 'package:mymobility_flutter/screens/splash_screen.dart';

import '../screens/edit_profile_screen.dart';
import '../screens/more_info_screen.dart';
import '../screens/settings.dart';
import 'navigation.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigator,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'splash_screen',
      builder: (context, state) => const SplashScreen(),
    ),
    ShellRoute(
        navigatorKey: _shellNavigator,
        builder: (context, state, child) => NavigationPage(child: child),
        routes: [
          GoRoute(
            path: '/map_screen',
            name: 'map',
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: MapScreen());
            },
            routes: [
              GoRoute(
                  path: 'more_info/:info',
                  name: 'more_info',
                  builder: (context, state) {
                    return MoreInfo(
                      info: state.params['info']!,
                    );
                  }),
            ],
          ),
          GoRoute(
            path: '/home_page',
            name: 'home',
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: HomepageScreen());
            },
          ),
          GoRoute(
            path: '/bookmarks_page',
            name: 'bookmarks',
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: BookmarksScreen());
            },
          ),
          GoRoute(
            path: '/profile_page',
            name: 'profile',
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: ProfileScreen());
            },
            routes: [
              GoRoute(
                  path: 'settings',
                  name: 'settings',
                  builder: (context, state) {
                    return const SettingsPage();
                  }),
              GoRoute(
                  path: 'edit_profile',
                  name: 'edit_profile',
                  builder: (context, state) {
                    return const EditProfilePage();
                  }),
            ],
          )
        ])
  ],
  errorBuilder: (context, state) => NoConnection(
    errorMsg: state.error.toString(),
    key: state.pageKey,
  ),
);
