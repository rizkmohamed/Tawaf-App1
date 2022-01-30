import 'package:flutter/material.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';
import 'package:twaf/app/Shared/Style/Text_Style.dart';

class BoxTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool obsecure;
  final bool readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;

  final bool autofocus;
  final bool enabled;
  final String? errorText;
  final String? hintText;
  final Color? hintColor;
  final Color? fillColor;

  final Function(String)? onSaved;
  // final Widget? prefix;

  const BoxTextField({
    Key? key,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obsecure = false,
    this.onTap,
    this.readOnly = false,
    this.autofocus = false,
    this.errorText,
    this.enabled = true,
    this.onEditingCompleted,
    this.onChanged,
    this.hintText,
    this.fillColor = kwhite,
    this.hintColor = kgary,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onChanged: onChanged,
        onEditingComplete: onEditingCompleted,
        autofocus: autofocus,
        onTap: onTap,
        enabled: enabled,
        readOnly: readOnly,
        obscureText: obsecure,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kgary),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kgary),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kgary),
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          errorText: errorText,
          hintStyle: kGray_14r,
          contentPadding: EdgeInsets.all(12),
        ),
        validator: validator);
  }
}
