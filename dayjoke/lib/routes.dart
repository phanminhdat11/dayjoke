import 'package:flutter/widgets.dart';

import 'screen/home_screen.dart';
import 'screen/mobile_screen.dart';
import 'screen/web_screen.dart';

final Map<String, WidgetBuilder> route = {
  HomeScreen.routeName:(context) => const HomeScreen(),
  WebScreen.routeName:(context) => const WebScreen(),
  MobileSreen.routeName:(context) => const MobileSreen()
};
