import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String? labelText;
  final String? helperText;
  final String? hintText;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInput({
    super.key,
    this.labelText,
    this.helperText,
    this.hintText,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText,
    required this.formProperty,
    required this.formValues,
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
        onChanged: (value) => {formValues[formProperty] = value},
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
        ),
      )
    ]);
  }
}
