import 'package:flutter/material.dart';

class CustomInputNom extends StatelessWidget {
  const CustomInputNom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
        autofocus: true,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        onChanged: (value) => print(value),
        validator: (value) {
          if (value == null) {
            return 'Ingrese un valor';
          }
          return value.length < 3 ? 'Mínimo 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: const InputDecoration(
          labelText: 'Nombre',
          hintText: 'Nombre de la persona',
          helperText: 'Sólo es el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
        ),
      )
    ]);
  }
}
