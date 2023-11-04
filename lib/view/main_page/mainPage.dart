import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:keshoohin/utils/route_names.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:badges/badges.dart' as badges;

import '../../themes/theme.dart';
import '../../utils/constant.dart';
import '../../utils/routes.dart';
import '../map_page/mapPage.dart';
import '../search_page/searchPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with RouteAware {
  int _index = 0;
  final appRouter = AppRouter();
  final QuickActions quickActions = const QuickActions();

  _MainPageState() {
    _setupQuickActions();
    _handleQuickActions();
  }

  void _setupQuickActions() {
    quickActions.setShortcutItems(<ShortcutItem>[
      const ShortcutItem(
          type: 'action_find_store',
          localizedTitle: 'Cửa hàng gần nhất',
          icon: 'icons8_map_marker'),
      const ShortcutItem(
          type: 'action_cart', localizedTitle: 'Giỏ hàng', icon: 'icons8_cart'),
      const ShortcutItem(
          type: 'action_search',
          localizedTitle: 'Tìm sản phẩm',
          icon: 'icons8_search')
    ]);
  }

  void _handleQuickActions() {
    quickActions.initialize((shortcutType) {
      if (shortcutType == 'action_search') {
        _navigateToPage(RouteNames.searchPage);
      } else if (shortcutType == 'action_cart') {
        _navigateToPage(RouteNames.cartPage);
      } else if (shortcutType == 'action_find_store') {
        _navigateToPage(RouteNames.mapPage);
      }
    });
  }

  void _navigateToPage(String pageRoute) {
    appRouter.router.goNamed(pageRoute);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: lightTheme,
      home: Scaffold(
        body: IndexedStack(
          index: _index,
          children: const [
          //const HomePage(),
          //CategoryPage(),
          //const NotificationPage(),
          MapPage(),
          //const AccountPage()
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).own().defaultContainerColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).own().defaultScaffoldColor,
            spreadRadius: 1,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: Theme.of(context).own().defaultVerticalPaddingOfScreen,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _buildBottomNavItems(),
      ),
    );
  }

  List<Widget> _buildBottomNavItems() {
    return navList.map((i) {
      return Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _index = i['id'];
              });
            },
            child: Container(
              child: (i['id'] == _index)
                  ? _buildSelectedNavItem(i)
                  : _buildUnselectedNavItem(i),
            ),
          )
        ],
      );
    }).toList();
  }

  Widget _buildSelectedNavItem(Map<String, dynamic> item) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(244, 163, 155, 0.4),
      ),
      child: Row(
        children: [
          _buildNavItemBadge(item),
          const SizedBox(width: 5),
          Text(
            item['title'].toString().tr(),
            style: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUnselectedNavItem(Map<String, dynamic> item) {
    return badges.Badge(
      position: badges.BadgePosition.custom(top: -6, end: -6),
      showBadge: item['isNoti'],
      badgeContent: item['isNoti'] ? item['futureToGetBadge'] : const Text(''),
      child: SvgPicture.asset(
        item['iconPath']!,
        width: 24,
      ),
    );
  }

  Widget _buildNavItemBadge(Map<String, dynamic> item) {
    return badges.Badge(
      position: badges.BadgePosition.custom(top: -6, end: -6),
      showBadge: item['isNoti'],
      badgeContent: item['isNoti'] ? item['futureToGetBadge'] : const Text(''),
      child: SvgPicture.asset(
        item['iconPath']!,
        color: Colors.red,
        width: 24,
      ),
    );
  }
}


