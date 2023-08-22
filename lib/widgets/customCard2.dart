import 'package:flutter/material.dart';
import 'package:flutter_componentes/themes/app_themes.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: AppThemes.primaryColor.withOpacity(0.5),
        elevation: 10,
        child: Column(
          children: [
            const FadeInImage(
              placeholder: AssetImage('jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/250?image=9'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 300),
            ),
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: const Text('Computadora')),
          ],
        ));
  }
}
