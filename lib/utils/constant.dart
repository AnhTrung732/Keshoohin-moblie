import 'package:flutter/material.dart';

const String baseUrl = "http://192.168.0.105:8000";

const kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

const kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: const Color(0xFF624d7e),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: const [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

List<Map<String, dynamic>> navList = [
  {
    'id': 0,
    "title": "home",
    "iconPath": "assets/icons/icon_house.svg",
    "routePath": "",
    "isNoti": false,
    "futureToGetBadge": null
  },
  {
    'id': 1,
    "title": "explore",
    "iconPath": "assets/icons/icon_lipstick.svg",
    "routePath": "",
    "isNoti": false,
    "futureToGetBadge": null
  },
  {
    'id': 2,
    "title": "notifications",
    "iconPath": "assets/icons/icon_bell.svg",
    "routePath": "",
    "isNoti": true,
    "futureToGetBadge": null
  },
  {
    'id': 3,
    "title": "stores",
    "iconPath": "assets/icons/icon_map.svg",
    "routePath": "",
    "isNoti": false,
    "futureToGetBadge": null
  },
  {
    'id': 4,
    "title": "account",
    "iconPath": "assets/icons/User.svg",
    "routePath": "",
    "isNoti": true,
    "futureToGetBadge": null
  }
];