import 'package:flutter/material.dart';
import 'package:flutter_app_user/widgets/PinCodeScreen.dart';
import 'package:flutter_app_user/widgets/ProfileScreen.dart';
import 'package:flutter_app_user/widgets/SignUpOTP.dart';
import 'package:flutter_app_user/widgets/SignUpScreen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

final _router = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (context, state) => const SignUpScreen(),
      routes: <RouteBase>[
        GoRoute(
            path: 'OTP',
            builder: (context, state) => const SignUpOTP(),
            routes: <RouteBase>[
              GoRoute(
                  path: 'Profile',
                  builder: (context, state) => const ProfileScreen(),
                  routes: <RouteBase>[
                    GoRoute(
                      path: 'PinCode',
                      builder: (context, state) => const PinCodeScreen(),
                    ),
                  ])
            ]),
      ]),
]);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
