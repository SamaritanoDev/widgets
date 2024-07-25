import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration reportInputDecoration({
    required String labelText,
    IconData? prefixIcon,
    required BuildContext context,
  }) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return InputDecoration(
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color.error),
      ),
      labelStyle: textTheme.labelMedium?.copyWith(color: color.primary),
      labelText: labelText,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color.primary),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignCenter,
          color: color.primary,
          width: 2,
        ),
      ),
    );
  }
}
