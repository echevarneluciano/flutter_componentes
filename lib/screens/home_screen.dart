import 'package:flutter/material.dart';
import 'package:flutter_componentes/models/menu_option.dart';
import 'package:flutter_componentes/screens/screens.dart';
import 'package:flutter_componentes/router/app_routes.dart';
import 'package:flutter_componentes/themes/app_themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOption;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
              leading: Icon(
                menuOptions[index].icon,
                color: AppThemes.primaryColor,
              ),
              title: Text(menuOptions[index].name),
              onTap: () {
                Navigator.pushNamed(context, menuOptions[index].route);
              }),
          separatorBuilder: (_, __) {
            return const Divider();
          },
          itemCount: menuOptions.length),
    );
  }
}
