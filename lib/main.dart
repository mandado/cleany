import 'package:cleany/pages/home_page.dart';
import 'package:cleany/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily:  GoogleFonts.roboto().fontFamily
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/categories': (context) => const HomePage(),
      },
    );
  }
}

