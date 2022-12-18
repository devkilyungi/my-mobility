import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

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
    return Scaffold(
      backgroundColor: const Color(0xff303d44),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 300.0,
              width: 300.0,
              child: Image(
                image: AssetImage('assets/images/final_logo.png'),
              ),
            ),
            SizedBox(
              height: 200.0,
              width: 200.0,
              child: LottieBuilder.asset('assets/images/circle_loader.json'),
            ),
          ],
        ),
      ),
    );
  }
}
