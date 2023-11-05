import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:keshoohin/app/navigator/route_names.dart';
import 'package:keshoohin/app/presentations/pages/cart_page/cartPage.dart';
import 'package:keshoohin/app/presentations/pages/login_page/loginPage.dart';
import 'package:keshoohin/app/presentations/pages/main_page/mainPage.dart';
import 'package:keshoohin/app/presentations/pages/map_page/mapPage.dart';
import 'package:keshoohin/app/presentations/pages/search_page/searchPage.dart';
import 'package:keshoohin/app/presentations/pages/welcome_page/welcomePage.dart';


@singleton
class AppRouter {
  final GoRouter _router;

  AppRouter()
      : _router = GoRouter(
      navigatorKey: GlobalKey<NavigatorState>(),
      initialLocation: '/',
      routes: getRoutes());

  GoRouter get router => _router;
}


 List<GoRoute> getRoutes() {
    return [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomePage(),
      ),
      LoginPageRoute(),
      MainPageRoute(),
      CartPageRoute(),
      SearchPageRoute(),
      MapPageRoute(),
    ];
 }


class LoginPageRoute extends GoRoute {
  LoginPageRoute()
      : super(
    name: RouteNames.loginPage,
    path: "/login_page",
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
    path: "/main_page",
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
    path: "/cart_page",
    builder: (context, state) => const CartPage(),
  );
}

class SearchPageRoute extends GoRoute {
  SearchPageRoute()
      : super(
    name: RouteNames.searchPage,
    path: "/search_page",
    builder: (context, state) => const SearchPage(),
  );
}

class MapPageRoute extends GoRoute {
  MapPageRoute()
      : super(
    name: RouteNames.mapPage,
    path: "/map_page",
    builder: (context, state) => const MapPage(),
  );
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
