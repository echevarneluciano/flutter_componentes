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
                const CustomInput(
                  labelText: 'Nombre',
                  hintText: 'Ingrese su nombre',
                  icon: Icons.account_circle,
                  suffixIcon: Icons.keyboard_arrow_right,
                ),
                const SizedBox(height: 20),
                const CustomInput(
                  labelText: 'Correo',
                  hintText: 'Ingrese su correo',
                  icon: Icons.email,
                  suffixIcon: Icons.keyboard_arrow_right,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                const CustomInput(
                  labelText: 'Contraseña',
                  hintText: 'Ingrese su contraseña',
                  icon: Icons.lock,
                  suffixIcon: Icons.keyboard_arrow_right,
                  obscureText: true,
                ),
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
