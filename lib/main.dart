import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:keshoohin/utils/routes.dart';
import 'package:keshoohin/view/welcome_page/welcomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

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
  final AppRouter appRouter = AppRouter(); // Create an instance of AppRouter

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.router,
    );
  }
}


