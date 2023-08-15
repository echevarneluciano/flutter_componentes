import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final lista = const ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView1AppBar'), centerTitle: true),
      body: ListView(children: [
        for (var item in lista)
          ListTile(
            title: Text(item),
          ),
      ]),
    );
  }
}
