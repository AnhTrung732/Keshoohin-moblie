import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'app/navigator/routes.dart';
import 'di/app_module.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();
  configureDependencies();
  runApp(
      EasyLocalization(
          supportedLocales: const [Locale('en', 'US'), Locale('vn', 'VN')],
          path:
          'assets/language', // <-- change the path of the translation files
          fallbackLocale: const Locale('en', 'US'),
      child:  const KeShoohinApp()));
}

class KeShoohinApp extends StatefulWidget {
  const KeShoohinApp({super.key});

  @override
  State<KeShoohinApp> createState() => _KeShoohinAppState();
}

class _KeShoohinAppState extends State<KeShoohinApp> {
  final appRouter = GetIt.I.get<AppRouter>(); // Create an instance of AppRouter

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}


