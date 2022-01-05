import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key key,
    this.labelText,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.onSaved,
    this.prefixIcon,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final String Function(String) validator;
  final TextInputType keyboardType;
  final void Function(String) onSaved;
  final Widget prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: labelText,
            hintText: hintText,
            prefixIcon: prefixIcon, 
          ),
          validator: validator,
          keyboardType: keyboardType,
          onSaved: onSaved,
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
