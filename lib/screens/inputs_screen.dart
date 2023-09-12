import 'package:flutter/material.dart';
import 'package:flutter_componentes/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Luciano',
      'last_name': 'Echevarne',
      'email': '0F1wH@example.com',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInput(
                  labelText: 'Nombre',
                  hintText: 'Ingrese su nombre',
                  suffixIcon: Icons.keyboard_arrow_right,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInput(
                  labelText: 'Correo',
                  hintText: 'Ingrese su correo',
                  suffixIcon: Icons.keyboard_arrow_right,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInput(
                  labelText: 'Contraseña',
                  hintText: 'Ingrese su contraseña',
                  suffixIcon: Icons.keyboard_arrow_right,
                  obscureText: true,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Superuser',
                        child: Text('Superuser'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Developer',
                        child: Text('Developer'),
                      )
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    }),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate())
                        print('Formulario no valido');
                      else {
                        print(formValues);
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar')))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
