import 'package:flutter/material.dart';
import 'package:flutter_componentes/themes/app_themes.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key, required this.imgUrl, this.tNom});
  final String imgUrl;
  final String? tNom;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: AppThemes.primaryColor.withOpacity(0.5),
        elevation: 10,
        child: Column(
          children: [
            FadeInImage(
              placeholder: const AssetImage('jar-loading.gif'),
              image: NetworkImage(imgUrl),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (tNom != null)
              Container(
                  alignment: AlignmentDirectional.centerEnd,
                  padding:
                      const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  child: Text(
                    tNom!,
                  )),
          ],
        ));
  }
}
