import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin/utils/route_names.dart';
import 'package:keshoohin/view/login_page/loginPage.dart';
import 'package:keshoohin/view/welcome_page/welcomePage.dart';

import '../view/main_page/mainPage.dart';

class AppRouter {
  final GoRouter _router = GoRouter(routes: [
    GoRoute(
        path: "/",
        builder: (context, state) => const WelcomePage(),
        routes: [
          GoRoute(
              name: RouteNames.loginPage,
              path: "login_page",
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                    key: state.pageKey,
                    child: const LoginPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) =>
                            SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(-1.0, 0.0),
                                  end: const Offset(0.0, 0.0),
                                ).animate(animation),
                                child: child),
                  )),
          GoRoute(
              name: RouteNames.mainPage,
              path: "main_page",
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                key: state.pageKey,
                child: const MainPage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                    SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(-1.0, 0.0),
                          end: const Offset(0.0, 0.0),
                        ).animate(animation),
                        child: child),
              ))
        ])
  ]);

  GoRouter get router => _router;
}

