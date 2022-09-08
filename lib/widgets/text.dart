import 'package:flutter/material.dart';

import '../config/colors.dart';

class TextButttonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;
  final String? family;
  const TextButttonWidget({
    Key? key, required this.onPressed,
    required this.text, this.color = Colors.white,
    this.size = 14, this.weight = FontWeight.normal, this.family
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: size, fontWeight: weight, fontFamily: family)
      )
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final String? family;
  final double size;
  final TextAlign align;
  final Color color;
  final FontWeight weight;
  const TextWidget({
    Key? key, required this.text, this.family, this.align = TextAlign.left,
    this.size = 14, this.color = Colors.white, this.weight = FontWeight.normal
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: align,
      text, style: TextStyle(color: color, fontSize: size, fontWeight: weight, fontFamily: family),
    );
  }
}

class TextFormWidget extends StatelessWidget {
  final TextEditingController? controller;
  final bool? enabled;
  final TextInputType? keyboard;
  final bool obscure;
  final void Function(String?)? saved;
  final int maxLines;
  final String? Function(String?)? validate;
  final String labeltext;
  const TextFormWidget({
    Key? key,
    this.controller,
    this.enabled,
    this.keyboard,
    this.saved,
    this.maxLines = 1,
    this.obscure = false,
    this.validate,
    required this.labeltext
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        style: TextStyle(color: whiteColor, fontSize: 16),
        cursorColor: whiteColor,
        controller: controller,
        enabled: enabled,
        onSaved: saved,
        keyboardType: keyboard,
        obscureText: obscure,
        maxLines: maxLines,
        validator: validate,
        decoration: InputDecoration(
          hintText: labeltext,
          hintStyle: TextStyle(color: warningColor, fontSize: 16),
          isDense: true,
          filled: true,
          fillColor: darkBlueColor,
          border:OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(width: 1, color: tabBlueThree, style: BorderStyle.solid),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: tabBlueOne, width: 2.5),
          ),
        ),
      ),
    );
  }
}