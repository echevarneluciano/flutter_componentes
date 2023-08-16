import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Flutter'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(Icons.person),
                title: Text('Nombre de ruta'),
                onTap: () => Navigator.pushNamed(context, 'card'),
              ),
          separatorBuilder: (_, __) {
            return Divider();
          },
          itemCount: 10),
    );
  }
}
