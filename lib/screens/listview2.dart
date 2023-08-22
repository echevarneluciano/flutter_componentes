import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final lista = const ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView2AppBar'),
      ),
      body: ListView.separated(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(lista[index]),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.indigo,
              ),
              onTap: () {});
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
