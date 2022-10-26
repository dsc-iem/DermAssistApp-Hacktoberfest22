import 'package:flutter/material.dart';
import 'SignUpPage.dart';
// import 'HomePage.dart';
// import 'SignInPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {"/": (context) => SignUpPage()}
    );
  }
}
