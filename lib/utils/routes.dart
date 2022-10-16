import 'package:flutter/cupertino.dart';
import 'package:play_story/homePage.dart';
import 'appRoutes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().homePage: (context) => HomePage()
};