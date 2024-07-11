import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_bottom_nav/dashboard/dashboard_screen.dart';
import 'package:go_router_bottom_nav/home/home_screen.dart';
import 'package:go_router_bottom_nav/user/user_screen.dart';

part 'app_routes.g.dart';

// For ShellRoutes:
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<MyShellRouteData>(routes: [
  TypedGoRoute<HomeRoute>(path: '/home'),
  TypedGoRoute<UserRoute>(path: '/users'),
])
class MyShellRouteData extends ShellRouteData {
  const MyShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    log(state.fullPath.toString());
    switch (state.fullPath) {
      case '/home':
        return DashboardScreen(
          initialIndex: 0,
        );
      case '/users':
        return DashboardScreen(
          initialIndex: 1,
        );

      default:
        return DashboardScreen();
    }
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

class UserRoute extends GoRouteData {
  const UserRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const UserScreen();
}
