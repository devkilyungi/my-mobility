import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mymobility_flutter/config/app_router.dart';

void main() => runApp(const MyMobility());

class MyMobility extends StatelessWidget {
  const MyMobility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}
