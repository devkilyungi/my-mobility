import 'package:flutter/material.dart';
import 'package:mymobility_flutter/navigation/navigation.dart';
import 'package:mymobility_flutter/screens/more_info_screen.dart';
import 'package:mymobility_flutter/theme.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const NavigationPage(),
        routes: [
          GoRoute(
              path: 'more_info/:info',
              name: 'more_info',
              builder: (context, state) {
                return MoreInfo(
                  info: state.params['info']!,
                );
              })
        ]),
  ],
);

void main() => runApp(const MyMobility());

class MyMobility extends StatelessWidget {
  const MyMobility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      routerConfig: _router,
    );
  }
}
