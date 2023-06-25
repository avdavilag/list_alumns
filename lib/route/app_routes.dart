import 'package:flutter/material.dart';
import '../models/models.dart';
import '../screens/screen.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOption = <MenuOption>[
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt,
        name: 'ListView Type 1',
        screen: const ListView1Screen()),
    // MenuOption(
    //     route: 'listview2',
    //     icon: Icons.list_alt,
    //     name: 'ListView Type 2',
    //     screen: const ListView2Screen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({
      'home': (BuildContext context) => const HomeScreen(),
    });
    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
