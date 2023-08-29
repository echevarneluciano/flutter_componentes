import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
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
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ))),
            )
          ]),
        ),
      ),
    );
  }
}
