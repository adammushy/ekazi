import 'package:ekazi/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

InputDecoration waInputDecoration(
    {IconData? prefixIcon,
    IconData? suffixIcon,
    String? hint,
    Color? bgColor,
    Color? hintColor,
    Color? enableColor,
    Color? borderColor,
    double? borderRadius,
    EdgeInsets? padding}) {
  return InputDecoration(
    contentPadding:
        padding ?? const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    counter: const Offstage(),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 16),
        borderSide: BorderSide(color: borderColor ?? colorApp)),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      borderSide:
          BorderSide(color: enableColor ?? Colors.grey.withOpacity(0.2)),
    ),
    // fillColor: bgColor ?? WAPrimaryColor.withOpacity(0),
    // fillColor: colorApp2.withOpacity(0.3),
    fillColor: bgColor ?? colorApp2.withOpacity(0.3),

    hintText: hint,

    prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: colorApp) : null,
    suffixIcon: suffixIcon != null ? Icon(suffixIcon, color: colorApp) : null,

    hintStyle: secondaryTextStyle(
      color: colorApp.withOpacity(0.6),
      size: 12,
    ),
    filled: true,
  );
}
