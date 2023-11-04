import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin/utils/route_names.dart';
import 'package:keshoohin/view/main_page/mainPage.dart';
import 'package:page_transition/page_transition.dart';

import '../../services/shared preferences/sharedPreferences.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferencesObject().futureGetIdCus(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data == 0) {
            return MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              home: const WelcomeScreen(),
            );
          } else {
            return const MainPage();
          }
        } else {
          return Container(
            color: Colors.white,
          );
        }
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(42, 36, 36, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WelcomeImagesCarousel(),
          const WelcomeContent(),
          const WelcomeActions(),
        ],
      ),
    );
  }
}

class WelcomeImagesCarousel extends StatelessWidget {
  final List<String> listImages = [
    'assets/images/background/background_1.jpg',
    'assets/images/background/background_2.jpg',
  ];

  WelcomeImagesCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: listImages.map((image) {
            return Padding(
              padding: EdgeInsets.only(
                right: listImages.last == image ? 0 : 10,
              ),
              child: Image.asset(
                image,
                width: MediaQuery.of(context).size.width * 0.95,
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            WelcomeTextAnimation(
              text: "welcomeQuote1".tr(),
              style: const TextStyle(color: Colors.white, fontSize: 22),
              duration: const Duration(milliseconds: 500),
            ),
            const SizedBox(height: 20),
            WelcomeTextAnimation(
              text: "welcomeQuote2".tr(),
              style: const TextStyle(color: Colors.grey),
              duration: const Duration(milliseconds: 1000),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeTextAnimation extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Duration duration;

  const WelcomeTextAnimation({
    super.key,
    required this.text,
    required this.style,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Offset>(
      duration: duration,
      curve: Curves.easeInOut,
      tween: Tween<Offset>(
        begin: Offset(MediaQuery.of(context).size.width, 0),
        end: const Offset(0, 0),
      ),
      child: Text(text, style: style),
      builder: (context, offset, child) {
        return Transform.translate(offset: offset, child: child);
      },
    );
  }
}

class WelcomeActions extends StatelessWidget {
  const WelcomeActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TweenAnimationBuilder<Offset>(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        tween: Tween<Offset>(
          begin: const Offset(0, 150),
          end: const Offset(0, 0),
        ),
        child: const WelcomeActionRow(),
        builder: (context, offset, child) {
          return Transform.translate(offset: offset, child: child);
        },
      ),
    );
  }
}

class WelcomeActionRow extends StatelessWidget {
  const WelcomeActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => context.pushNamed(RouteNames.loginPage),
          child: Text(
            "login".tr(),
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                while (context.canPop()) {
                  context.pop();
                }
                context.pushReplacementNamed(RouteNames.mainPage);
              },
              child: Text("skip".tr(),
                  style: const TextStyle(color: Colors.white)),
            ),
            const SizedBox(width: 15),
            if (context.locale.languageCode == "vn")
              const WelcomeLanguageSwitch(
                locale: Locale("en", "US"),
                flagImage: "assets/images/flags/Flag_Vietnam.png",
              )
            else
              const WelcomeLanguageSwitch(
                locale: Locale("vn", "VN"),
                flagImage: "assets/images/flags/Flag_UK.png",
              ),
          ],
        ),
      ],
    );
  }
}

class WelcomeLanguageSwitch extends StatelessWidget {
  final Locale locale;
  final String flagImage;

  const WelcomeLanguageSwitch({
    super.key,
    required this.locale,
    required this.flagImage,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.setLocale(locale);
      },
      icon: Container(
        width: 40,
        height: 40,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(500)),
        child: Image.asset(
          flagImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
