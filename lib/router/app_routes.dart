import 'package:flutter/material.dart';
import 'package:flutter_componentes/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const String home = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'Home',
      icon: Icons.home,
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      name: 'Listview1',
      icon: Icons.list,
      screen: const ListView1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview2',
      icon: Icons.list,
      screen: const ListView2Screen(),
    ),
    MenuOption(
      route: 'alert',
      name: 'Alertas',
      icon: Icons.warning,
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      name: 'Tarjetas',
      icon: Icons.credit_card,
      screen: const CardScreen(),
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}