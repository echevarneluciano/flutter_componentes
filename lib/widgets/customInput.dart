import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String? labelText;
  final String? helperText;
  final String? hintText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;

  const CustomInput({
    super.key,
    this.labelText,
    this.helperText,
    this.hintText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
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
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          helperText: helperText,
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
        ),
      )
    ]);
  }
}
