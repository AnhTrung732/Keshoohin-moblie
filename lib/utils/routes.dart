import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin/utils/route_names.dart';

import '../view/cart_page/cartPage.dart';
import '../view/login_page/loginPage.dart';
import '../view/main_page/mainPage.dart';
import '../view/map_page/mapPage.dart';
import '../view/search_page/searchPage.dart';
import '../view/welcome_page/welcomePage.dart';

class AppRoutesConfig {
  static List<GoRoute> getRoutes() {
    return [
      GoRoute(
        path: "/",
        builder: (context, state) => const WelcomePage(),
        routes: [
          LoginPageRoute(),
          MainPageRoute(),
          CartPageRoute(),
          SearchPageRoute(),
          MapPageRoute(),
        ],
      ),
    ];
  }
}

class LoginPageRoute extends GoRoute {
  LoginPageRoute()
      : super(
          name: RouteNames.loginPage,
          path: "login_page",
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const LoginPage(),
            transitionsBuilder: _buildSlideTransition,
          ),
        );
}

class MainPageRoute extends GoRoute {
  MainPageRoute()
      : super(
          name: RouteNames.mainPage,
          path: "main_page",
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const MainPage(),
            transitionsBuilder: _buildSlideTransition,
          ),
        );
}

class CartPageRoute extends GoRoute {
  CartPageRoute()
      : super(
          name: RouteNames.cartPage,
          path: "cart_page",
          builder: (context, state) => const CartPage(),
        );
}

class SearchPageRoute extends GoRoute {
  SearchPageRoute()
      : super(
          name: RouteNames.searchPage,
          path: "search_page",
          builder: (context, state) => const SearchPage(),
        );
}

class MapPageRoute extends GoRoute {
  MapPageRoute()
      : super(
          name: RouteNames.mapPage,
          path: "map_page",
          builder: (context, state) => const MapPage(),
        );
}

class AppRouter {
  static AppRouter? _instance;
  final GoRouter _router;

  factory AppRouter() {
    _instance ??= AppRouter._internal();
    return _instance!;
  }

  AppRouter._internal()
      : _router = GoRouter(
      navigatorKey: GlobalKey<NavigatorState>(),
      initialLocation: '/',
      routes: AppRoutesConfig.getRoutes());

  GoRouter get router => _router;
}


Widget _buildSlideTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return SlideTransition(
    position: Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(animation),
    child: child,
  );
}
