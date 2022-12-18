import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mymobility_flutter/main.dart';
import 'package:mymobility_flutter/navigation/navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5))
        .then((value) => context.goNamed('home'));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 200.0,
          width: 200.0,
          child: Text('Splash Screen'),
        ),
      ),
    );
  }
}
