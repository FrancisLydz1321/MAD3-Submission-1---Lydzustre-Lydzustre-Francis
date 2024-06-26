import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_midterm2/models/user.dart';
import 'package:mobile_midterm2/pages/home_page.dart';
import 'package:mobile_midterm2/pages/login_page.dart';
import 'package:mobile_midterm2/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const Text('asdasd'),
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: "/login",
  routes: <RouteBase>[
    GoRoute(
      name: "/login",
      path: "/login",
      builder: (context, state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      name: "/home",
      path: "/home",
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      name: "/profile",
      path: "/profile ",
      builder: (context, state) {
        final User? user = state.extra as User;
        return const ProfilePage(
          user: user,
        );
      },
    ),
  ],
);
