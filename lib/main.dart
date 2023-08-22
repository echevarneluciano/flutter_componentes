import 'package:flutter/material.dart';
import 'package:flutter_componentes/router/app_routes.dart';
import 'package:flutter_componentes/screens/screens.dart';
import 'package:flutter_componentes/themes/app_themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoutes.home,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: AppThemes.lightTheme);
  }
}
