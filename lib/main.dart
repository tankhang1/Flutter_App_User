import 'package:flutter/material.dart';
import 'package:flutter_app_user/widgets/SignUpScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(230, 239, 255, 1),
        body: SignUpScreen(),
      ),
    );
  }
}
