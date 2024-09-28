import 'dart:ui';

import 'package:flutter/material.dart';


class CustomField extends StatefulWidget {
  final String label;
  final IconData icon;
  final TextEditingController controller;
  final bool secure;
  final bool isEmail;
  final bool dataScreen;

  const CustomField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    this.secure = false,
    this.isEmail = false,
    this.dataScreen = false,
  });

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    Color color =  Theme.of(context).colorScheme.primary;

    return TextFormField(
      controller: widget.controller,
      obscureText: widget.secure ? hidePass : false,
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        focusedBorder: OutlineInputBorder(
          gapPadding: 5,
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: color),),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        suffixIcon: widget.secure
            ? IconButton(
          onPressed: () {
            setState(() {
              hidePass = !hidePass;
            });
          },
          icon: hidePass
              ? const Icon(
            Icons.remove_red_eye_outlined,
          )
              : const Icon(Icons.remove_red_eye),
          color: color,
        )
            : const SizedBox(),
        labelText: widget.label,
        labelStyle: Theme.of(context).textTheme.labelLarge,
        prefix: !widget.dataScreen? Icon(
          widget.icon,
          color: color,
        size: 24,): null,
      ),
      keyboardType: widget.isEmail ? TextInputType.emailAddress : null,
    );
  }
}
