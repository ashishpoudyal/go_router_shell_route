import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_bottom_nav/dashboard/dashboard_screen.dart';
import 'package:go_router_bottom_nav/home/home_screen.dart';
import 'package:go_router_bottom_nav/routes/app_routes.dart';

final GoRouter _goRouter = GoRouter(
  routes: $appRoutes,
  initialLocation: '/users',
  debugLogDiagnostics: true,
);

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
      routerConfig: _goRouter,
    );
  }
}
