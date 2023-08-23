import 'package:flutter/material.dart';
import 'package:flutter_componentes/themes/app_themes.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          children: const [
            CustomCard1(),
            SizedBox(height: 10),
            CustomCard2(
                imgUrl: 'https://picsum.photos/250?image=9', tNom: 'Note 9'),
            CustomCard2(imgUrl: 'https://picsum.photos/250?image=11'),
            CustomCard2(
                imgUrl: 'https://picsum.photos/250?image=12', tNom: 'Dunas'),
          ]),
    );
  }
}
