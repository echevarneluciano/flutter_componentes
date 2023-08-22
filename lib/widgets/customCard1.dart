import 'package:flutter/material.dart';
import '../themes/app_themes.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album,
            color: AppThemes.primaryColor,
          ),
          title: Text('Titulo'),
          subtitle: Text('Subtitulo'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
                onPressed: () {},
                child: const Text('Ok'),
                style: AppThemes.lightTheme.textButtonTheme.style),
            TextButton(onPressed: () {}, child: const Text('Cancelar'))
          ]),
        )
      ],
    ));
  }
}
